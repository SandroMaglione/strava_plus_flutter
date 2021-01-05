import 'package:bloc/bloc.dart';
import 'package:mobile_polimi_project/app/login/domain/login_repository.rc.dart';
import 'package:mobile_polimi_project/core/errors/auth_failure.dart';
import 'package:mobile_polimi_project/core/errors/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final GetAuthTokenRepo _getAuthTokenRepo;
  final GetUserAccountInfoRepo _getUserAccountInfoRepo;
  final LogoutRepo _logoutRepo;

  LoginCubit(
    this._getAuthTokenRepo,
    this._getUserAccountInfoRepo,
    this._logoutRepo,
  ) : super(const LoginState.initial());

  Future<void> realod() async => emit(const LoginState.initial());

  Future<void> init() async {
    emit(const LoginState.loading());
    emit(
      (await _getUserAccountInfoRepo()).fold(
        (failure) => LoginState.error(failure),
        (_) => const LoginState.success(),
      ),
    );
  }

  Future<void> getAuthToken(String route) async {
    emit(const LoginState.loading());
    emit(
      (await _getAuthTokenRepo(GetAuthTokenRepoParams(route: route))).fold(
        (failure) => failure is AuthFailure
            ? const LoginState.missingAuth()
            : LoginState.error(failure),
        (_) => const LoginState.success(),
      ),
    );
  }

  Future<void> logout() async {
    await _logoutRepo();
    emit(const LoginState.initial());
  }
}
