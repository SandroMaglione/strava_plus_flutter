import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/weight_data.dart';
import 'package:mobile_polimi_project/app/user/domain/user_repository.rc.dart';
import 'package:mobile_polimi_project/core/utils/async_state.dart';

class WeightCubit extends Cubit<AsyncState<IList<WeightData>>> {
  final GetWeightListRepo _getWeightListRepo;
  final UpdateWeightRepo _updateWeightRepo;

  WeightCubit(
    this._getWeightListRepo,
    this._updateWeightRepo,
  ) : super(const AsyncState.initial());

  Future<void> init() async {
    emit(const AsyncState.loading());
    emit(
      (await _getWeightListRepo()).fold(
        (failure) => AsyncState.error(failure),
        (weightList) => AsyncState.success(weightList),
      ),
    );
  }

  Future<void> updateWeight(double weight) async {
    state.maybeWhen(
      orElse: () {},
      success: (weightList) async {
        emit(
          (await _updateWeightRepo(
            UpdateWeightRepoParams(
              weight: weight,
            ),
          ))
              .fold(
            (failure) => AsyncState.error(failure),
            (weightData) => AsyncState.success(
              weightList.appendElement(weightData),
            ),
          ),
        );
      },
    );
  }
}
