import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/app/login/domain/login_repository.rc.dart';
import 'package:mobile_polimi_project/core/utils/async_state.dart';

class LoginCubit extends Cubit<AsyncState<Unit>> {
  final GetAuthTokenRepo _getAuthTokenRepo;
  final GetUserAccountInfoRepo _getUserAccountInfoRepo;

  LoginCubit(
    this._getAuthTokenRepo,
    this._getUserAccountInfoRepo,
  ) : super(const AsyncState.initial());

  Future<void> init() async {
    emit(const AsyncState.loading());
    emit(
      (await _getUserAccountInfoRepo()).fold(
        (failure) => AsyncState.error(failure),
        (_) => const AsyncState.success(unit),
      ),
    );
  }

  Future<void> getAuthToken(String route) async {
    emit(const AsyncState.loading());
    emit(
      (await _getAuthTokenRepo(GetAuthTokenRepoParams(route: route))).fold(
        (failure) => AsyncState.error(failure),
        (_) => const AsyncState.success(unit),
      ),
    );
  }
}
