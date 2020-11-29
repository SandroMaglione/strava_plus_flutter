import 'package:dartz/dartz.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:mobile_polimi_project/app/activity/data/models/photo_primary_model.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/photo_primary.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/photos.dart';

part 'photos_model.g.dart';

@JsonSerializable()
class PhotosModel extends Photos {
  final PhotoPrimaryModel primary;
  @override
  final int count;

  const PhotosModel({
    @required this.count,
    this.primary,
  });

  factory PhotosModel.fromJson(Map<String, dynamic> json) =>
      _$PhotosModelFromJson(json);
  Map<String, dynamic> toJson() => _$PhotosModelToJson(this);

  @override
  Option<PhotoPrimary> get primaryOption => optionOf(primary);
}
