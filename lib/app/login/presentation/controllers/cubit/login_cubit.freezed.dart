// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

// ignore: unused_element
  InitialLoginState initial() {
    return const InitialLoginState();
  }

// ignore: unused_element
  LoadingLoginState loading() {
    return const LoadingLoginState();
  }

// ignore: unused_element
  ErrorLoginState error(Failure failure) {
    return ErrorLoginState(
      failure,
    );
  }

// ignore: unused_element
  SuccessLoginState success() {
    return const SuccessLoginState();
  }

// ignore: unused_element
  MissingAuthLoginState missingAuth() {
    return const MissingAuthLoginState();
  }
}

/// @nodoc
// ignore: unused_element
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(Failure failure),
    @required TResult success(),
    @required TResult missingAuth(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(Failure failure),
    TResult success(),
    TResult missingAuth(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(InitialLoginState value),
    @required TResult loading(LoadingLoginState value),
    @required TResult error(ErrorLoginState value),
    @required TResult success(SuccessLoginState value),
    @required TResult missingAuth(MissingAuthLoginState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(InitialLoginState value),
    TResult loading(LoadingLoginState value),
    TResult error(ErrorLoginState value),
    TResult success(SuccessLoginState value),
    TResult missingAuth(MissingAuthLoginState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

/// @nodoc
abstract class $InitialLoginStateCopyWith<$Res> {
  factory $InitialLoginStateCopyWith(
          InitialLoginState value, $Res Function(InitialLoginState) then) =
      _$InitialLoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialLoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements $InitialLoginStateCopyWith<$Res> {
  _$InitialLoginStateCopyWithImpl(
      InitialLoginState _value, $Res Function(InitialLoginState) _then)
      : super(_value, (v) => _then(v as InitialLoginState));

  @override
  InitialLoginState get _value => super._value as InitialLoginState;
}

/// @nodoc
class _$InitialLoginState
    with DiagnosticableTreeMixin
    implements InitialLoginState {
  const _$InitialLoginState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LoginState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialLoginState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(Failure failure),
    @required TResult success(),
    @required TResult missingAuth(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(success != null);
    assert(missingAuth != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(Failure failure),
    TResult success(),
    TResult missingAuth(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(InitialLoginState value),
    @required TResult loading(LoadingLoginState value),
    @required TResult error(ErrorLoginState value),
    @required TResult success(SuccessLoginState value),
    @required TResult missingAuth(MissingAuthLoginState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(success != null);
    assert(missingAuth != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(InitialLoginState value),
    TResult loading(LoadingLoginState value),
    TResult error(ErrorLoginState value),
    TResult success(SuccessLoginState value),
    TResult missingAuth(MissingAuthLoginState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialLoginState implements LoginState {
  const factory InitialLoginState() = _$InitialLoginState;
}

/// @nodoc
abstract class $LoadingLoginStateCopyWith<$Res> {
  factory $LoadingLoginStateCopyWith(
          LoadingLoginState value, $Res Function(LoadingLoginState) then) =
      _$LoadingLoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingLoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements $LoadingLoginStateCopyWith<$Res> {
  _$LoadingLoginStateCopyWithImpl(
      LoadingLoginState _value, $Res Function(LoadingLoginState) _then)
      : super(_value, (v) => _then(v as LoadingLoginState));

  @override
  LoadingLoginState get _value => super._value as LoadingLoginState;
}

/// @nodoc
class _$LoadingLoginState
    with DiagnosticableTreeMixin
    implements LoadingLoginState {
  const _$LoadingLoginState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LoginState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingLoginState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(Failure failure),
    @required TResult success(),
    @required TResult missingAuth(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(success != null);
    assert(missingAuth != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(Failure failure),
    TResult success(),
    TResult missingAuth(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(InitialLoginState value),
    @required TResult loading(LoadingLoginState value),
    @required TResult error(ErrorLoginState value),
    @required TResult success(SuccessLoginState value),
    @required TResult missingAuth(MissingAuthLoginState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(success != null);
    assert(missingAuth != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(InitialLoginState value),
    TResult loading(LoadingLoginState value),
    TResult error(ErrorLoginState value),
    TResult success(SuccessLoginState value),
    TResult missingAuth(MissingAuthLoginState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingLoginState implements LoginState {
  const factory LoadingLoginState() = _$LoadingLoginState;
}

/// @nodoc
abstract class $ErrorLoginStateCopyWith<$Res> {
  factory $ErrorLoginStateCopyWith(
          ErrorLoginState value, $Res Function(ErrorLoginState) then) =
      _$ErrorLoginStateCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class _$ErrorLoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $ErrorLoginStateCopyWith<$Res> {
  _$ErrorLoginStateCopyWithImpl(
      ErrorLoginState _value, $Res Function(ErrorLoginState) _then)
      : super(_value, (v) => _then(v as ErrorLoginState));

  @override
  ErrorLoginState get _value => super._value as ErrorLoginState;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(ErrorLoginState(
      failure == freezed ? _value.failure : failure as Failure,
    ));
  }
}

/// @nodoc
class _$ErrorLoginState
    with DiagnosticableTreeMixin
    implements ErrorLoginState {
  const _$ErrorLoginState(this.failure) : assert(failure != null);

  @override
  final Failure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.error(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginState.error'))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorLoginState &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  $ErrorLoginStateCopyWith<ErrorLoginState> get copyWith =>
      _$ErrorLoginStateCopyWithImpl<ErrorLoginState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(Failure failure),
    @required TResult success(),
    @required TResult missingAuth(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(success != null);
    assert(missingAuth != null);
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(Failure failure),
    TResult success(),
    TResult missingAuth(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(InitialLoginState value),
    @required TResult loading(LoadingLoginState value),
    @required TResult error(ErrorLoginState value),
    @required TResult success(SuccessLoginState value),
    @required TResult missingAuth(MissingAuthLoginState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(success != null);
    assert(missingAuth != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(InitialLoginState value),
    TResult loading(LoadingLoginState value),
    TResult error(ErrorLoginState value),
    TResult success(SuccessLoginState value),
    TResult missingAuth(MissingAuthLoginState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorLoginState implements LoginState {
  const factory ErrorLoginState(Failure failure) = _$ErrorLoginState;

  Failure get failure;
  $ErrorLoginStateCopyWith<ErrorLoginState> get copyWith;
}

/// @nodoc
abstract class $SuccessLoginStateCopyWith<$Res> {
  factory $SuccessLoginStateCopyWith(
          SuccessLoginState value, $Res Function(SuccessLoginState) then) =
      _$SuccessLoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuccessLoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements $SuccessLoginStateCopyWith<$Res> {
  _$SuccessLoginStateCopyWithImpl(
      SuccessLoginState _value, $Res Function(SuccessLoginState) _then)
      : super(_value, (v) => _then(v as SuccessLoginState));

  @override
  SuccessLoginState get _value => super._value as SuccessLoginState;
}

/// @nodoc
class _$SuccessLoginState
    with DiagnosticableTreeMixin
    implements SuccessLoginState {
  const _$SuccessLoginState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.success()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LoginState.success'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SuccessLoginState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(Failure failure),
    @required TResult success(),
    @required TResult missingAuth(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(success != null);
    assert(missingAuth != null);
    return success();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(Failure failure),
    TResult success(),
    TResult missingAuth(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(InitialLoginState value),
    @required TResult loading(LoadingLoginState value),
    @required TResult error(ErrorLoginState value),
    @required TResult success(SuccessLoginState value),
    @required TResult missingAuth(MissingAuthLoginState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(success != null);
    assert(missingAuth != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(InitialLoginState value),
    TResult loading(LoadingLoginState value),
    TResult error(ErrorLoginState value),
    TResult success(SuccessLoginState value),
    TResult missingAuth(MissingAuthLoginState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessLoginState implements LoginState {
  const factory SuccessLoginState() = _$SuccessLoginState;
}

/// @nodoc
abstract class $MissingAuthLoginStateCopyWith<$Res> {
  factory $MissingAuthLoginStateCopyWith(MissingAuthLoginState value,
          $Res Function(MissingAuthLoginState) then) =
      _$MissingAuthLoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MissingAuthLoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements $MissingAuthLoginStateCopyWith<$Res> {
  _$MissingAuthLoginStateCopyWithImpl(
      MissingAuthLoginState _value, $Res Function(MissingAuthLoginState) _then)
      : super(_value, (v) => _then(v as MissingAuthLoginState));

  @override
  MissingAuthLoginState get _value => super._value as MissingAuthLoginState;
}

/// @nodoc
class _$MissingAuthLoginState
    with DiagnosticableTreeMixin
    implements MissingAuthLoginState {
  const _$MissingAuthLoginState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.missingAuth()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LoginState.missingAuth'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MissingAuthLoginState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(Failure failure),
    @required TResult success(),
    @required TResult missingAuth(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(success != null);
    assert(missingAuth != null);
    return missingAuth();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(Failure failure),
    TResult success(),
    TResult missingAuth(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (missingAuth != null) {
      return missingAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(InitialLoginState value),
    @required TResult loading(LoadingLoginState value),
    @required TResult error(ErrorLoginState value),
    @required TResult success(SuccessLoginState value),
    @required TResult missingAuth(MissingAuthLoginState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(success != null);
    assert(missingAuth != null);
    return missingAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(InitialLoginState value),
    TResult loading(LoadingLoginState value),
    TResult error(ErrorLoginState value),
    TResult success(SuccessLoginState value),
    TResult missingAuth(MissingAuthLoginState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (missingAuth != null) {
      return missingAuth(this);
    }
    return orElse();
  }
}

abstract class MissingAuthLoginState implements LoginState {
  const factory MissingAuthLoginState() = _$MissingAuthLoginState;
}
