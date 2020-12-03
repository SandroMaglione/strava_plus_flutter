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

  Future<void> init() async {
    emit(const AsyncState.loading());
    emit(
      (await _getComposedSummaryActivityListRepo(
        GetComposedSummaryActivityListRepoParams(
          page: 1,
          before: DateTime.now(),
          after: DateTime(2017),
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

  void updateRpe(int id, int rpe) {
    _updateValue(
      id,
      ExtraStatsModel(
        rpeValue: rpe,
        moodValue: extraStatsById(id).mood.mood.getOrElse(() => -1),
      ),
    );
  }

  void updateMood(int id, int mood) {
    _updateValue(
      id,
      ExtraStatsModel(
        rpeValue: extraStatsById(id).rpe.rpe.getOrElse(() => -1),
        moodValue: mood,
      ),
    );
  }

  void _updateValue(int id, ExtraStatsModel extraStatsModel) {
    state.maybeWhen(
      orElse: () {},
      success: (activities) async {
        emit(const AsyncState.loading());
        emit(
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
        );
      },
    );
  }
}
