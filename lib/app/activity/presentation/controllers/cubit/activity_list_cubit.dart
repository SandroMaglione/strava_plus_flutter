import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/activity/domain/activity_repository.rc.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/summary_activity.dart';
import 'package:mobile_polimi_project/core/utils/async_state.dart';

class ActivityListCubit extends Cubit<AsyncState<IList<SummaryActivity>>> {
  final GetLoggedInAthleteActivitiesRepo _getLoggedInAthleteActivitiesRepo;

  ActivityListCubit(
    this._getLoggedInAthleteActivitiesRepo,
  ) : super(const AsyncState.initial());

  Future<void> init() async {
    emit(const AsyncState.loading());
    emit(
      (await _getLoggedInAthleteActivitiesRepo(
        GetLoggedInAthleteActivitiesRepoParams(
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
}
