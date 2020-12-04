import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/activity/data/models/composed_summary_activity_model.dart';
import 'package:mobile_polimi_project/app/activity/data/models/extra_stats_model.dart';
import 'package:mobile_polimi_project/app/activity/domain/activity_repository.rc.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/composed_summary_activity.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/extra_stats.dart';
import 'package:mobile_polimi_project/core/utils/async_state.dart';

class ActivityListCubit
    extends Cubit<AsyncState<IList<ComposedSummaryActivity>>> {
  final GetComposedSummaryActivityListRepo _getComposedSummaryActivityListRepo;
  final SaveExtraStatsRepo _saveExtraStatsRepo;

  ActivityListCubit(
    this._getComposedSummaryActivityListRepo,
    this._saveExtraStatsRepo,
  ) : super(const AsyncState.initial());

  Future<void> init({
    DateTime before,
    DateTime after,
  }) async {
    emit(const AsyncState.loading());
    emit(
      (await _getComposedSummaryActivityListRepo(
        GetComposedSummaryActivityListRepoParams(
          page: 1,
          before: before ?? DateTime.now(),
          after: after ?? DateTime(2017),
        ),
      ))
          .fold(
        (failure) => AsyncState.error(failure),
        (activities) => AsyncState.success(activities),
      ),
    );
  }

  ExtraStats extraStatsById(int id) => state.maybeWhen(
        orElse: () => ExtraStats.empty,
        success: (activities) => activities.foldLeft(
          ExtraStats.empty,
          (previous, a) => a.summaryActivity.id == id ? a.extraStats : previous,
        ),
      );

  void updateRpe(int id, int value) {
    _updateValue(id, extraStatsById(id).copyWith(rpeValueNew: value).toModel);
  }

  void updateMood(int id, int value) {
    _updateValue(id, extraStatsById(id).copyWith(moodValueNew: value).toModel);
  }

  void updateExperience(int id, int value) {
    _updateValue(
        id, extraStatsById(id).copyWith(experienceValueNew: value).toModel);
  }

  void updateTemperature(int id, int value) {
    _updateValue(
        id, extraStatsById(id).copyWith(temperatureValueNew: value).toModel);
  }

  void updateHumorPostWorkout(int id, int value) {
    _updateValue(id,
        extraStatsById(id).copyWith(humorPostWorkoutValueNew: value).toModel);
  }

  void updateMotivationPreWorkout(int id, int value) {
    _updateValue(
        id,
        extraStatsById(id)
            .copyWith(motivationPreWorkoutValueNew: value)
            .toModel);
  }

  void updateLastMeal(int id, int value) {
    _updateValue(
        id, extraStatsById(id).copyWith(lastMealValueNew: value).toModel);
  }

  void updateWorkoutScope(int id, int value) {
    _updateValue(
        id, extraStatsById(id).copyWith(workoutScopeValueNew: value).toModel);
  }

  void updateWithStretching(int id, bool value) {
    _updateValue(
        id, extraStatsById(id).copyWith(withStretchingValueNew: value).toModel);
  }

  void updateIsSpecial(int id, bool value) {
    _updateValue(
        id, extraStatsById(id).copyWith(isSpecialValueNew: value).toModel);
  }

  void updateIsSupervised(int id, bool value) {
    _updateValue(
        id, extraStatsById(id).copyWith(isSupervisedValueNew: value).toModel);
  }

  void updateIsEspeciallyBad(int id, bool value) {
    _updateValue(id,
        extraStatsById(id).copyWith(isEspeciallyBadValueNew: value).toModel);
  }

  void _updateValue(int id, ExtraStatsModel extraStatsModel) {
    state.maybeWhen(
      orElse: () {},
      success: (activities) async => emit(
        (await _saveExtraStatsRepo(
          SaveExtraStatsRepoParams(
            id: id,
            extraStats: extraStatsModel,
          ),
        ))
            .fold(
          (failure) => AsyncState.error(failure),
          (_) => AsyncState.success(
            activities.map(
              (a) => a.summaryActivity.id == id
                  ? ComposedSummaryActivityModel(
                      extraStats: extraStatsModel,
                      summaryActivity: a.summaryActivity.toModel,
                    )
                  : a,
            ),
          ),
        ),
      ),
    );
  }
}
