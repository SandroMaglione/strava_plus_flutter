// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'theme_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ThemeOption _$ThemeOptionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'theme_light':
      return ThemeLightThemeOption.fromJson(json);
    case 'theme_dark':
      return ThemeDarkThemeOption.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$ThemeOptionTearOff {
  const _$ThemeOptionTearOff();

// ignore: unused_element
  ThemeLightThemeOption theme_light() {
    return const ThemeLightThemeOption();
  }

// ignore: unused_element
  ThemeDarkThemeOption theme_dark() {
    return const ThemeDarkThemeOption();
  }

// ignore: unused_element
  ThemeOption fromJson(Map<String, Object> json) {
    return ThemeOption.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ThemeOption = _$ThemeOptionTearOff();

/// @nodoc
mixin _$ThemeOption {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult theme_light(),
    @required TResult theme_dark(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult theme_light(),
    TResult theme_dark(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult theme_light(ThemeLightThemeOption value),
    @required TResult theme_dark(ThemeDarkThemeOption value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult theme_light(ThemeLightThemeOption value),
    TResult theme_dark(ThemeDarkThemeOption value),
    @required TResult orElse(),
  });
  Map<String, dynamic> toJson();
}

/// @nodoc
abstract class $ThemeOptionCopyWith<$Res> {
  factory $ThemeOptionCopyWith(
          ThemeOption value, $Res Function(ThemeOption) then) =
      _$ThemeOptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$ThemeOptionCopyWithImpl<$Res> implements $ThemeOptionCopyWith<$Res> {
  _$ThemeOptionCopyWithImpl(this._value, this._then);

  final ThemeOption _value;
  // ignore: unused_field
  final $Res Function(ThemeOption) _then;
}

/// @nodoc
abstract class $ThemeLightThemeOptionCopyWith<$Res> {
  factory $ThemeLightThemeOptionCopyWith(ThemeLightThemeOption value,
          $Res Function(ThemeLightThemeOption) then) =
      _$ThemeLightThemeOptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$ThemeLightThemeOptionCopyWithImpl<$Res>
    extends _$ThemeOptionCopyWithImpl<$Res>
    implements $ThemeLightThemeOptionCopyWith<$Res> {
  _$ThemeLightThemeOptionCopyWithImpl(
      ThemeLightThemeOption _value, $Res Function(ThemeLightThemeOption) _then)
      : super(_value, (v) => _then(v as ThemeLightThemeOption));

  @override
  ThemeLightThemeOption get _value => super._value as ThemeLightThemeOption;
}

@JsonSerializable()

/// @nodoc
class _$ThemeLightThemeOption
    with DiagnosticableTreeMixin
    implements ThemeLightThemeOption {
  const _$ThemeLightThemeOption();

  factory _$ThemeLightThemeOption.fromJson(Map<String, dynamic> json) =>
      _$_$ThemeLightThemeOptionFromJson(json);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ThemeOption.theme_light()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ThemeOption.theme_light'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ThemeLightThemeOption);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult theme_light(),
    @required TResult theme_dark(),
  }) {
    assert(theme_light != null);
    assert(theme_dark != null);
    return theme_light();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult theme_light(),
    TResult theme_dark(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (theme_light != null) {
      return theme_light();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult theme_light(ThemeLightThemeOption value),
    @required TResult theme_dark(ThemeDarkThemeOption value),
  }) {
    assert(theme_light != null);
    assert(theme_dark != null);
    return theme_light(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult theme_light(ThemeLightThemeOption value),
    TResult theme_dark(ThemeDarkThemeOption value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (theme_light != null) {
      return theme_light(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$ThemeLightThemeOptionToJson(this)
      ..['runtimeType'] = 'theme_light';
  }
}

abstract class ThemeLightThemeOption implements ThemeOption {
  const factory ThemeLightThemeOption() = _$ThemeLightThemeOption;

  factory ThemeLightThemeOption.fromJson(Map<String, dynamic> json) =
      _$ThemeLightThemeOption.fromJson;
}

/// @nodoc
abstract class $ThemeDarkThemeOptionCopyWith<$Res> {
  factory $ThemeDarkThemeOptionCopyWith(ThemeDarkThemeOption value,
          $Res Function(ThemeDarkThemeOption) then) =
      _$ThemeDarkThemeOptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$ThemeDarkThemeOptionCopyWithImpl<$Res>
    extends _$ThemeOptionCopyWithImpl<$Res>
    implements $ThemeDarkThemeOptionCopyWith<$Res> {
  _$ThemeDarkThemeOptionCopyWithImpl(
      ThemeDarkThemeOption _value, $Res Function(ThemeDarkThemeOption) _then)
      : super(_value, (v) => _then(v as ThemeDarkThemeOption));

  @override
  ThemeDarkThemeOption get _value => super._value as ThemeDarkThemeOption;
}

@JsonSerializable()

/// @nodoc
class _$ThemeDarkThemeOption
    with DiagnosticableTreeMixin
    implements ThemeDarkThemeOption {
  const _$ThemeDarkThemeOption();

  factory _$ThemeDarkThemeOption.fromJson(Map<String, dynamic> json) =>
      _$_$ThemeDarkThemeOptionFromJson(json);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ThemeOption.theme_dark()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ThemeOption.theme_dark'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ThemeDarkThemeOption);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult theme_light(),
    @required TResult theme_dark(),
  }) {
    assert(theme_light != null);
    assert(theme_dark != null);
    return theme_dark();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult theme_light(),
    TResult theme_dark(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (theme_dark != null) {
      return theme_dark();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult theme_light(ThemeLightThemeOption value),
    @required TResult theme_dark(ThemeDarkThemeOption value),
  }) {
    assert(theme_light != null);
    assert(theme_dark != null);
    return theme_dark(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult theme_light(ThemeLightThemeOption value),
    TResult theme_dark(ThemeDarkThemeOption value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (theme_dark != null) {
      return theme_dark(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$ThemeDarkThemeOptionToJson(this)..['runtimeType'] = 'theme_dark';
  }
}

abstract class ThemeDarkThemeOption implements ThemeOption {
  const factory ThemeDarkThemeOption() = _$ThemeDarkThemeOption;

  factory ThemeDarkThemeOption.fromJson(Map<String, dynamic> json) =
      _$ThemeDarkThemeOption.fromJson;
}
