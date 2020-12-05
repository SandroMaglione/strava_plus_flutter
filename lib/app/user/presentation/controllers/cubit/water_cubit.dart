import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/user/data/models/water_data_model.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/water_data.dart';
import 'package:mobile_polimi_project/app/user/domain/user_repository.rc.dart';
import 'package:mobile_polimi_project/core/utils/async_state.dart';

class WaterCubit extends Cubit<AsyncState<IMap<DateTime, WaterData>>> {
  final GetWaterListRepo _getWaterListRepo;
  final UpdateWaterRepo _updateWaterRepo;

  WaterCubit(
    this._getWaterListRepo,
    this._updateWaterRepo,
  ) : super(const AsyncState.initial());

  Future<void> init() async {
    emit(const AsyncState.loading());
    emit(
      (await _getWaterListRepo()).fold(
        (failure) => AsyncState.error(failure),
        (waterMap) => AsyncState.success(waterMap),
      ),
    );
  }

  Future<void> updateWaterData(
    DateTime date,
    double water,
  ) async {
    state.maybeWhen(
      orElse: () {},
      success: (waterMap) async {
        emit(
          (await _updateWaterRepo(
            UpdateWaterRepoParams(
              date: date,
              waterData: WaterDataModel(waterAmount: water),
            ),
          ))
              .fold(
            (failure) => AsyncState.error(failure),
            (waterData) => AsyncState.success(
              imap(
                {
                  ...waterMap.toMap(),
                  waterData.value1: waterData.value2,
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
