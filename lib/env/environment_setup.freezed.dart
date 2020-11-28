// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'environment_setup.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$EnvironmentSetupTearOff {
  const _$EnvironmentSetupTearOff();

// ignore: unused_element
  ProdEnvironmentSetup prod() {
    return const ProdEnvironmentSetup();
  }

// ignore: unused_element
  DevEnvironmentSetup dev() {
    return const DevEnvironmentSetup();
  }
}

/// @nodoc
// ignore: unused_element
const $EnvironmentSetup = _$EnvironmentSetupTearOff();

/// @nodoc
mixin _$EnvironmentSetup {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult prod(),
    @required TResult dev(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult prod(),
    TResult dev(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult prod(ProdEnvironmentSetup value),
    @required TResult dev(DevEnvironmentSetup value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult prod(ProdEnvironmentSetup value),
    TResult dev(DevEnvironmentSetup value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $EnvironmentSetupCopyWith<$Res> {
  factory $EnvironmentSetupCopyWith(
          EnvironmentSetup value, $Res Function(EnvironmentSetup) then) =
      _$EnvironmentSetupCopyWithImpl<$Res>;
}

/// @nodoc
class _$EnvironmentSetupCopyWithImpl<$Res>
    implements $EnvironmentSetupCopyWith<$Res> {
  _$EnvironmentSetupCopyWithImpl(this._value, this._then);

  final EnvironmentSetup _value;
  // ignore: unused_field
  final $Res Function(EnvironmentSetup) _then;
}

/// @nodoc
abstract class $ProdEnvironmentSetupCopyWith<$Res> {
  factory $ProdEnvironmentSetupCopyWith(ProdEnvironmentSetup value,
          $Res Function(ProdEnvironmentSetup) then) =
      _$ProdEnvironmentSetupCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProdEnvironmentSetupCopyWithImpl<$Res>
    extends _$EnvironmentSetupCopyWithImpl<$Res>
    implements $ProdEnvironmentSetupCopyWith<$Res> {
  _$ProdEnvironmentSetupCopyWithImpl(
      ProdEnvironmentSetup _value, $Res Function(ProdEnvironmentSetup) _then)
      : super(_value, (v) => _then(v as ProdEnvironmentSetup));

  @override
  ProdEnvironmentSetup get _value => super._value as ProdEnvironmentSetup;
}

/// @nodoc
class _$ProdEnvironmentSetup
    with DiagnosticableTreeMixin
    implements ProdEnvironmentSetup {
  const _$ProdEnvironmentSetup();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EnvironmentSetup.prod()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'EnvironmentSetup.prod'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ProdEnvironmentSetup);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult prod(),
    @required TResult dev(),
  }) {
    assert(prod != null);
    assert(dev != null);
    return prod();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult prod(),
    TResult dev(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (prod != null) {
      return prod();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult prod(ProdEnvironmentSetup value),
    @required TResult dev(DevEnvironmentSetup value),
  }) {
    assert(prod != null);
    assert(dev != null);
    return prod(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult prod(ProdEnvironmentSetup value),
    TResult dev(DevEnvironmentSetup value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (prod != null) {
      return prod(this);
    }
    return orElse();
  }
}

abstract class ProdEnvironmentSetup implements EnvironmentSetup {
  const factory ProdEnvironmentSetup() = _$ProdEnvironmentSetup;
}

/// @nodoc
abstract class $DevEnvironmentSetupCopyWith<$Res> {
  factory $DevEnvironmentSetupCopyWith(
          DevEnvironmentSetup value, $Res Function(DevEnvironmentSetup) then) =
      _$DevEnvironmentSetupCopyWithImpl<$Res>;
}

/// @nodoc
class _$DevEnvironmentSetupCopyWithImpl<$Res>
    extends _$EnvironmentSetupCopyWithImpl<$Res>
    implements $DevEnvironmentSetupCopyWith<$Res> {
  _$DevEnvironmentSetupCopyWithImpl(
      DevEnvironmentSetup _value, $Res Function(DevEnvironmentSetup) _then)
      : super(_value, (v) => _then(v as DevEnvironmentSetup));

  @override
  DevEnvironmentSetup get _value => super._value as DevEnvironmentSetup;
}

/// @nodoc
class _$DevEnvironmentSetup
    with DiagnosticableTreeMixin
    implements DevEnvironmentSetup {
  const _$DevEnvironmentSetup();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EnvironmentSetup.dev()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'EnvironmentSetup.dev'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DevEnvironmentSetup);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult prod(),
    @required TResult dev(),
  }) {
    assert(prod != null);
    assert(dev != null);
    return dev();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult prod(),
    TResult dev(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dev != null) {
      return dev();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult prod(ProdEnvironmentSetup value),
    @required TResult dev(DevEnvironmentSetup value),
  }) {
    assert(prod != null);
    assert(dev != null);
    return dev(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult prod(ProdEnvironmentSetup value),
    TResult dev(DevEnvironmentSetup value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dev != null) {
      return dev(this);
    }
    return orElse();
  }
}

abstract class DevEnvironmentSetup implements EnvironmentSetup {
  const factory DevEnvironmentSetup() = _$DevEnvironmentSetup;
}
