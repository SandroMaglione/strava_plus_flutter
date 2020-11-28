import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'api_model.freezed.dart';
part 'api_model.g.dart';

/// Example of model for PUT/POST request
@freezed
abstract class ApiModel with _$ApiModel {
  /// Default constructor
  const factory ApiModel({
    @required String requiredData,
    String notRequiredData,
  }) = _ApiModel;

  /// Json serialization generation for [ApiModel]
  factory ApiModel.fromJson(Map<String, dynamic> json) =>
      _$ApiModelFromJson(json);
}
