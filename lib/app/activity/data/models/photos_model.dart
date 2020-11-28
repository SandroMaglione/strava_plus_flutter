import 'package:dartz/dartz.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/photos.dart';

part 'photos_model.g.dart';

@JsonSerializable()
class PhotosModel extends Photos {
  final String primary;
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
  Option<String> get primaryOption => optionOf(primary);
}
