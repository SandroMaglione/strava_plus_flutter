// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ApiModel _$ApiModelFromJson(Map<String, dynamic> json) {
  return _ApiModel.fromJson(json);
}

/// @nodoc
class _$ApiModelTearOff {
  const _$ApiModelTearOff();

// ignore: unused_element
  _ApiModel call({@required String requiredData, String notRequiredData}) {
    return _ApiModel(
      requiredData: requiredData,
      notRequiredData: notRequiredData,
    );
  }

// ignore: unused_element
  ApiModel fromJson(Map<String, Object> json) {
    return ApiModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ApiModel = _$ApiModelTearOff();

/// @nodoc
mixin _$ApiModel {
  String get requiredData;
  String get notRequiredData;

  Map<String, dynamic> toJson();
  $ApiModelCopyWith<ApiModel> get copyWith;
}

/// @nodoc
abstract class $ApiModelCopyWith<$Res> {
  factory $ApiModelCopyWith(ApiModel value, $Res Function(ApiModel) then) =
      _$ApiModelCopyWithImpl<$Res>;
  $Res call({String requiredData, String notRequiredData});
}

/// @nodoc
class _$ApiModelCopyWithImpl<$Res> implements $ApiModelCopyWith<$Res> {
  _$ApiModelCopyWithImpl(this._value, this._then);

  final ApiModel _value;
  // ignore: unused_field
  final $Res Function(ApiModel) _then;

  @override
  $Res call({
    Object requiredData = freezed,
    Object notRequiredData = freezed,
  }) {
    return _then(_value.copyWith(
      requiredData: requiredData == freezed
          ? _value.requiredData
          : requiredData as String,
      notRequiredData: notRequiredData == freezed
          ? _value.notRequiredData
          : notRequiredData as String,
    ));
  }
}

/// @nodoc
abstract class _$ApiModelCopyWith<$Res> implements $ApiModelCopyWith<$Res> {
  factory _$ApiModelCopyWith(_ApiModel value, $Res Function(_ApiModel) then) =
      __$ApiModelCopyWithImpl<$Res>;
  @override
  $Res call({String requiredData, String notRequiredData});
}

/// @nodoc
class __$ApiModelCopyWithImpl<$Res> extends _$ApiModelCopyWithImpl<$Res>
    implements _$ApiModelCopyWith<$Res> {
  __$ApiModelCopyWithImpl(_ApiModel _value, $Res Function(_ApiModel) _then)
      : super(_value, (v) => _then(v as _ApiModel));

  @override
  _ApiModel get _value => super._value as _ApiModel;

  @override
  $Res call({
    Object requiredData = freezed,
    Object notRequiredData = freezed,
  }) {
    return _then(_ApiModel(
      requiredData: requiredData == freezed
          ? _value.requiredData
          : requiredData as String,
      notRequiredData: notRequiredData == freezed
          ? _value.notRequiredData
          : notRequiredData as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ApiModel with DiagnosticableTreeMixin implements _ApiModel {
  const _$_ApiModel({@required this.requiredData, this.notRequiredData})
      : assert(requiredData != null);

  factory _$_ApiModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ApiModelFromJson(json);

  @override
  final String requiredData;
  @override
  final String notRequiredData;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiModel(requiredData: $requiredData, notRequiredData: $notRequiredData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiModel'))
      ..add(DiagnosticsProperty('requiredData', requiredData))
      ..add(DiagnosticsProperty('notRequiredData', notRequiredData));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApiModel &&
            (identical(other.requiredData, requiredData) ||
                const DeepCollectionEquality()
                    .equals(other.requiredData, requiredData)) &&
            (identical(other.notRequiredData, notRequiredData) ||
                const DeepCollectionEquality()
                    .equals(other.notRequiredData, notRequiredData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(requiredData) ^
      const DeepCollectionEquality().hash(notRequiredData);

  @override
  _$ApiModelCopyWith<_ApiModel> get copyWith =>
      __$ApiModelCopyWithImpl<_ApiModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ApiModelToJson(this);
  }
}

abstract class _ApiModel implements ApiModel {
  const factory _ApiModel(
      {@required String requiredData, String notRequiredData}) = _$_ApiModel;

  factory _ApiModel.fromJson(Map<String, dynamic> json) = _$_ApiModel.fromJson;

  @override
  String get requiredData;
  @override
  String get notRequiredData;
  @override
  _$ApiModelCopyWith<_ApiModel> get copyWith;
}
