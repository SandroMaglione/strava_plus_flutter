import 'package:bloc/bloc.dart';
import 'package:mobile_polimi_project/app/activity/domain/activity_repository.rc.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/detailed_activity.dart';
import 'package:mobile_polimi_project/core/utils/async_state.dart';

class DetailedActivityCubit extends Cubit<AsyncState<DetailedActivity>> {
  final GetActivityByIdRepo _getActivityByIdRepo;

  DetailedActivityCubit(
    this._getActivityByIdRepo,
  ) : super(const AsyncState.initial());

  Future<void> init(int id) async {
    emit(const AsyncState.loading());
    emit(
      (await _getActivityByIdRepo(
        GetActivityByIdRepoParams(
          id: id,
          includeAllEfforts: true,
        ),
      ))
          .fold(
        (failure) => AsyncState.error(failure),
        (activity) => AsyncState.success(activity),
      ),
    );
  }
}
