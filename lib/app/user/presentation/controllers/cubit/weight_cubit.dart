import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/key_weight_data.dart';
import 'package:mobile_polimi_project/app/user/domain/user_repository.rc.dart';
import 'package:mobile_polimi_project/core/utils/async_state.dart';

class WeightCubit extends Cubit<AsyncState<IList<KeyWeightData>>> {
  final GetWeightListRepo _getWeightListRepo;
  final UpdateWeightRepo _updateWeightRepo;
  final ChangeWeightRepo _changeWeightRepo;
  final DeleteWeightRepo _deleteWeightRepo;

  WeightCubit(
    this._getWeightListRepo,
    this._updateWeightRepo,
    this._changeWeightRepo,
    this._deleteWeightRepo,
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
            (updatedWeightList) => AsyncState.success(updatedWeightList),
          ),
        );
      },
    );
  }

  Future<void> deleteWeight(int index) async {
    state.maybeWhen(
      orElse: () {},
      success: (weightList) async {
        emit(
          (await _deleteWeightRepo(
            DeleteWeightRepoParams(
              index: index,
            ),
          ))
              .fold(
            (failure) => AsyncState.error(failure),
            (updatedWeightList) => AsyncState.success(updatedWeightList),
          ),
        );
      },
    );
  }

  Future<void> changeWeight({
    @required int index,
    @required int key,
    @required double weight,
    @required DateTime dateTime,
  }) async {
    state.maybeWhen(
      orElse: () {},
      success: (weightList) async {
        emit(
          (await _changeWeightRepo(
            ChangeWeightRepoParams(
              index: key,
              dateTime: dateTime,
              weight: weight,
            ),
          ))
              .fold(
            (failure) => AsyncState.error(failure),
            (updatedWeightList) => AsyncState.success(updatedWeightList),
          ),
        );
      },
    );
  }
}
