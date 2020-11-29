import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/photo_primary.dart';

part 'photo_primary_model.g.dart';

@JsonSerializable()
class PhotoPrimaryModel extends PhotoPrimary {
  @override
  final int id;
  final String unique_id;
  @override
  final Map<String, String> urls;
  @override
  final int source;

  const PhotoPrimaryModel({
    @required this.id,
    @required this.unique_id,
    @required this.urls,
    @required this.source,
  });

  factory PhotoPrimaryModel.fromJson(Map<String, dynamic> json) =>
      _$PhotoPrimaryModelFromJson(json);
  Map<String, dynamic> toJson() => _$PhotoPrimaryModelToJson(this);

  @override
  String get uniqueId => unique_id;
}
