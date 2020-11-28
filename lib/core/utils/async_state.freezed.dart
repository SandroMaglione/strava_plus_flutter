// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'async_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AsyncStateTearOff {
  const _$AsyncStateTearOff();

// ignore: unused_element
  InitialAsyncState<T> initial<T>() {
    return InitialAsyncState<T>();
  }

// ignore: unused_element
  LoadingAsyncState<T> loading<T>() {
    return LoadingAsyncState<T>();
  }

// ignore: unused_element
  ErrorAsyncState<T> error<T>(Failure failure) {
    return ErrorAsyncState<T>(
      failure,
    );
  }

// ignore: unused_element
  SuccessAsyncState<T> success<T>(T data) {
    return SuccessAsyncState<T>(
      data,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AsyncState = _$AsyncStateTearOff();

/// @nodoc
mixin _$AsyncState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(Failure failure),
    @required TResult success(T data),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(Failure failure),
    TResult success(T data),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(InitialAsyncState<T> value),
    @required TResult loading(LoadingAsyncState<T> value),
    @required TResult error(ErrorAsyncState<T> value),
    @required TResult success(SuccessAsyncState<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(InitialAsyncState<T> value),
    TResult loading(LoadingAsyncState<T> value),
    TResult error(ErrorAsyncState<T> value),
    TResult success(SuccessAsyncState<T> value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AsyncStateCopyWith<T, $Res> {
  factory $AsyncStateCopyWith(
          AsyncState<T> value, $Res Function(AsyncState<T>) then) =
      _$AsyncStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$AsyncStateCopyWithImpl<T, $Res>
    implements $AsyncStateCopyWith<T, $Res> {
  _$AsyncStateCopyWithImpl(this._value, this._then);

  final AsyncState<T> _value;
  // ignore: unused_field
  final $Res Function(AsyncState<T>) _then;
}

/// @nodoc
abstract class $InitialAsyncStateCopyWith<T, $Res> {
  factory $InitialAsyncStateCopyWith(InitialAsyncState<T> value,
          $Res Function(InitialAsyncState<T>) then) =
      _$InitialAsyncStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$InitialAsyncStateCopyWithImpl<T, $Res>
    extends _$AsyncStateCopyWithImpl<T, $Res>
    implements $InitialAsyncStateCopyWith<T, $Res> {
  _$InitialAsyncStateCopyWithImpl(
      InitialAsyncState<T> _value, $Res Function(InitialAsyncState<T>) _then)
      : super(_value, (v) => _then(v as InitialAsyncState<T>));

  @override
  InitialAsyncState<T> get _value => super._value as InitialAsyncState<T>;
}

/// @nodoc
class _$InitialAsyncState<T>
    with DiagnosticableTreeMixin
    implements InitialAsyncState<T> {
  const _$InitialAsyncState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AsyncState<$T>.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AsyncState<$T>.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialAsyncState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(Failure failure),
    @required TResult success(T data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(success != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(Failure failure),
    TResult success(T data),
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
    @required TResult initial(InitialAsyncState<T> value),
    @required TResult loading(LoadingAsyncState<T> value),
    @required TResult error(ErrorAsyncState<T> value),
    @required TResult success(SuccessAsyncState<T> value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(success != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(InitialAsyncState<T> value),
    TResult loading(LoadingAsyncState<T> value),
    TResult error(ErrorAsyncState<T> value),
    TResult success(SuccessAsyncState<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialAsyncState<T> implements AsyncState<T> {
  const factory InitialAsyncState() = _$InitialAsyncState<T>;
}

/// @nodoc
abstract class $LoadingAsyncStateCopyWith<T, $Res> {
  factory $LoadingAsyncStateCopyWith(LoadingAsyncState<T> value,
          $Res Function(LoadingAsyncState<T>) then) =
      _$LoadingAsyncStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$LoadingAsyncStateCopyWithImpl<T, $Res>
    extends _$AsyncStateCopyWithImpl<T, $Res>
    implements $LoadingAsyncStateCopyWith<T, $Res> {
  _$LoadingAsyncStateCopyWithImpl(
      LoadingAsyncState<T> _value, $Res Function(LoadingAsyncState<T>) _then)
      : super(_value, (v) => _then(v as LoadingAsyncState<T>));

  @override
  LoadingAsyncState<T> get _value => super._value as LoadingAsyncState<T>;
}

/// @nodoc
class _$LoadingAsyncState<T>
    with DiagnosticableTreeMixin
    implements LoadingAsyncState<T> {
  const _$LoadingAsyncState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AsyncState<$T>.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AsyncState<$T>.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingAsyncState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(Failure failure),
    @required TResult success(T data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(success != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(Failure failure),
    TResult success(T data),
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
    @required TResult initial(InitialAsyncState<T> value),
    @required TResult loading(LoadingAsyncState<T> value),
    @required TResult error(ErrorAsyncState<T> value),
    @required TResult success(SuccessAsyncState<T> value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(success != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(InitialAsyncState<T> value),
    TResult loading(LoadingAsyncState<T> value),
    TResult error(ErrorAsyncState<T> value),
    TResult success(SuccessAsyncState<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingAsyncState<T> implements AsyncState<T> {
  const factory LoadingAsyncState() = _$LoadingAsyncState<T>;
}

/// @nodoc
abstract class $ErrorAsyncStateCopyWith<T, $Res> {
  factory $ErrorAsyncStateCopyWith(
          ErrorAsyncState<T> value, $Res Function(ErrorAsyncState<T>) then) =
      _$ErrorAsyncStateCopyWithImpl<T, $Res>;
  $Res call({Failure failure});
}

/// @nodoc
class _$ErrorAsyncStateCopyWithImpl<T, $Res>
    extends _$AsyncStateCopyWithImpl<T, $Res>
    implements $ErrorAsyncStateCopyWith<T, $Res> {
  _$ErrorAsyncStateCopyWithImpl(
      ErrorAsyncState<T> _value, $Res Function(ErrorAsyncState<T>) _then)
      : super(_value, (v) => _then(v as ErrorAsyncState<T>));

  @override
  ErrorAsyncState<T> get _value => super._value as ErrorAsyncState<T>;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(ErrorAsyncState<T>(
      failure == freezed ? _value.failure : failure as Failure,
    ));
  }
}

/// @nodoc
class _$ErrorAsyncState<T>
    with DiagnosticableTreeMixin
    implements ErrorAsyncState<T> {
  const _$ErrorAsyncState(this.failure) : assert(failure != null);

  @override
  final Failure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AsyncState<$T>.error(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AsyncState<$T>.error'))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorAsyncState<T> &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  $ErrorAsyncStateCopyWith<T, ErrorAsyncState<T>> get copyWith =>
      _$ErrorAsyncStateCopyWithImpl<T, ErrorAsyncState<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(Failure failure),
    @required TResult success(T data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(success != null);
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(Failure failure),
    TResult success(T data),
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
    @required TResult initial(InitialAsyncState<T> value),
    @required TResult loading(LoadingAsyncState<T> value),
    @required TResult error(ErrorAsyncState<T> value),
    @required TResult success(SuccessAsyncState<T> value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(success != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(InitialAsyncState<T> value),
    TResult loading(LoadingAsyncState<T> value),
    TResult error(ErrorAsyncState<T> value),
    TResult success(SuccessAsyncState<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorAsyncState<T> implements AsyncState<T> {
  const factory ErrorAsyncState(Failure failure) = _$ErrorAsyncState<T>;

  Failure get failure;
  $ErrorAsyncStateCopyWith<T, ErrorAsyncState<T>> get copyWith;
}

/// @nodoc
abstract class $SuccessAsyncStateCopyWith<T, $Res> {
  factory $SuccessAsyncStateCopyWith(SuccessAsyncState<T> value,
          $Res Function(SuccessAsyncState<T>) then) =
      _$SuccessAsyncStateCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class _$SuccessAsyncStateCopyWithImpl<T, $Res>
    extends _$AsyncStateCopyWithImpl<T, $Res>
    implements $SuccessAsyncStateCopyWith<T, $Res> {
  _$SuccessAsyncStateCopyWithImpl(
      SuccessAsyncState<T> _value, $Res Function(SuccessAsyncState<T>) _then)
      : super(_value, (v) => _then(v as SuccessAsyncState<T>));

  @override
  SuccessAsyncState<T> get _value => super._value as SuccessAsyncState<T>;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(SuccessAsyncState<T>(
      data == freezed ? _value.data : data as T,
    ));
  }
}

/// @nodoc
class _$SuccessAsyncState<T>
    with DiagnosticableTreeMixin
    implements SuccessAsyncState<T> {
  const _$SuccessAsyncState(this.data) : assert(data != null);

  @override
  final T data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AsyncState<$T>.success(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AsyncState<$T>.success'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SuccessAsyncState<T> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  $SuccessAsyncStateCopyWith<T, SuccessAsyncState<T>> get copyWith =>
      _$SuccessAsyncStateCopyWithImpl<T, SuccessAsyncState<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(Failure failure),
    @required TResult success(T data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(success != null);
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(Failure failure),
    TResult success(T data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(InitialAsyncState<T> value),
    @required TResult loading(LoadingAsyncState<T> value),
    @required TResult error(ErrorAsyncState<T> value),
    @required TResult success(SuccessAsyncState<T> value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(success != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(InitialAsyncState<T> value),
    TResult loading(LoadingAsyncState<T> value),
    TResult error(ErrorAsyncState<T> value),
    TResult success(SuccessAsyncState<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessAsyncState<T> implements AsyncState<T> {
  const factory SuccessAsyncState(T data) = _$SuccessAsyncState<T>;

  T get data;
  $SuccessAsyncStateCopyWith<T, SuccessAsyncState<T>> get copyWith;
}
