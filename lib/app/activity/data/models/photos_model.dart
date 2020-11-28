import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/photos.dart';

part 'photos_model.g.dart';

@JsonSerializable()
class PhotosModel extends Photos {
  @override
  final String primary;
  @override
  final int count;

  const PhotosModel({
    @required this.primary,
    @required this.count,
  });

  factory PhotosModel.fromJson(Map<String, dynamic> json) =>
      _$PhotosModelFromJson(json);
  // Map<String, dynamic> toJson() => _$PhotosModelToJson(this);
}
