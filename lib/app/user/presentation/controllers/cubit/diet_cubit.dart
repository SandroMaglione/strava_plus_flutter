import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/user/data/models/diet_data_model.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/diet_data.dart';
import 'package:mobile_polimi_project/app/user/domain/user_repository.rc.dart';
import 'package:mobile_polimi_project/core/utils/async_state.dart';

class DietCubit extends Cubit<AsyncState<IMap<DateTime, DietData>>> {
  final GetDietListRepo _getDietListRepo;
  final UpdateDietRepo _updateDietRepo;

  DietCubit(
    this._getDietListRepo,
    this._updateDietRepo,
  ) : super(const AsyncState.initial());

  Future<void> init() async {
    emit(const AsyncState.loading());
    emit(
      (await _getDietListRepo()).fold(
        (failure) => AsyncState.error(failure),
        (dietMap) => AsyncState.success(dietMap),
      ),
    );
  }

  Future<void> updateNight(DateTime date, bool value) async => _updateDietData(
        date,
        (dietData) => dietData.fold(
          () => DietDataModel(eatNight: value),
          (a) => a.copyWith(eatNightNew: value),
        ),
      );

  Future<void> updateBreakfast(DateTime date, bool value) async =>
      _updateDietData(
        date,
        (dietData) => dietData.fold(
          () => DietDataModel(eatBreakfast: value),
          (a) => a.copyWith(eatBreakfastNew: value),
        ),
      );

  Future<void> updateMidMorning(DateTime date, bool value) async =>
      _updateDietData(
        date,
        (dietData) => dietData.fold(
          () => DietDataModel(eatMidMorning: value),
          (a) => a.copyWith(eatMidMorningNew: value),
        ),
      );

  Future<void> updateLunch(DateTime date, bool value) async => _updateDietData(
        date,
        (dietData) => dietData.fold(
          () => DietDataModel(eatLunch: value),
          (a) => a.copyWith(eatLunchNew: value),
        ),
      );

  Future<void> updateMidAfternoon(DateTime date, bool value) async =>
      _updateDietData(
        date,
        (dietData) => dietData.fold(
          () => DietDataModel(eatMidAfternoon: value),
          (a) => a.copyWith(eatMidAfternoonNew: value),
        ),
      );

  Future<void> updateDinner(DateTime date, bool value) async => _updateDietData(
        date,
        (dietData) => dietData.fold(
          () => DietDataModel(eatDinner: value),
          (a) => a.copyWith(eatDinnerNew: value),
        ),
      );

  Future<void> updateAfterDinner(DateTime date, bool value) async =>
      _updateDietData(
        date,
        (dietData) => dietData.fold(
          () => DietDataModel(eatAfterDinner: value),
          (a) => a.copyWith(eatAfterDinnerNew: value),
        ),
      );

  Future<void> _updateDietData(
    DateTime date,
    DietData Function(Option<DietData>) buildDietData,
  ) async {
    state.maybeWhen(
      orElse: () {},
      success: (dietMap) async {
        emit(
          (await _updateDietRepo(
            UpdateDietRepoParams(
              date: date,
              dietData: buildDietData(dietMap.get(date)),
            ),
          ))
              .fold(
            (failure) => AsyncState.error(failure),
            (dietData) => AsyncState.success(
              imap(
                {
                  ...dietMap.toMap(),
                  dietData.value1: dietData.value2,
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
