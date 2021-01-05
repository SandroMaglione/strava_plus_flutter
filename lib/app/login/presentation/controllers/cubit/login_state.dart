part of 'login_cubit.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.initial() = InitialLoginState;
  const factory LoginState.loading() = LoadingLoginState;
  const factory LoginState.error(Failure failure) = ErrorLoginState;
  const factory LoginState.success() = SuccessLoginState;
  const factory LoginState.missingAuth() = MissingAuthLoginState;
}
