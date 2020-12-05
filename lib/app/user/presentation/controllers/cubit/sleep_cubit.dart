import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/user/data/models/sleep_data_model.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/sleep_data.dart';
import 'package:mobile_polimi_project/app/user/domain/user_repository.rc.dart';
import 'package:mobile_polimi_project/core/utils/async_state.dart';

class SleepCubit extends Cubit<AsyncState<IMap<DateTime, SleepData>>> {
  final GetSleepListRepo _getSleepListRepo;
  final UpdateSleepRepo _updateSleepRepo;

  SleepCubit(
    this._getSleepListRepo,
    this._updateSleepRepo,
  ) : super(const AsyncState.initial());

  Future<void> init() async {
    emit(const AsyncState.loading());
    emit(
      (await _getSleepListRepo()).fold(
        (failure) => AsyncState.error(failure),
        (sleepMap) => AsyncState.success(sleepMap),
      ),
    );
  }

  Future<void> updateGoToBed(DateTime date, DateTime goToBed) async {
    _updateSleepData(
      date,
      (sleepData) => sleepData.fold(
        () => SleepDataModel.goToBed(goToBed: goToBed),
        (a) => a.copyWith(goToBedNew: goToBed),
      ),
    );
  }

  Future<void> updateWakeUp(DateTime date, DateTime wakeUp) async {
    _updateSleepData(
      date,
      (sleepData) => sleepData.fold(
        () => SleepDataModel.wakeUp(wakeUp: wakeUp),
        (a) => a.copyWith(wakeUpNew: wakeUp),
      ),
    );
  }

  Future<void> _updateSleepData(
    DateTime date,
    SleepData Function(Option<SleepData>) buildSleepData,
  ) async {
    state.maybeWhen(
      orElse: () {},
      success: (sleepMap) async {
        emit(
          (await _updateSleepRepo(
            UpdateSleepRepoParams(
              date: date,
              sleepData: buildSleepData(sleepMap.get(date)),
            ),
          ))
              .fold(
            (failure) => AsyncState.error(failure),
            (sleepData) => AsyncState.success(
              imap(
                {
                  ...sleepMap.toMap(),
                  sleepData.value1: sleepData.value2,
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
