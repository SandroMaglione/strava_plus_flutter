import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:mobile_polimi_project/app/athlete/domain/entities/meta_athlete.dart';

part 'meta_athlete_model.g.dart';

@JsonSerializable()
class MetaAthleteModel extends MetaAthlete {
  @override
  final int id;

  const MetaAthleteModel({
    @required this.id,
  });

  factory MetaAthleteModel.fromJson(Map<String, dynamic> json) =>
      _$MetaAthleteModelFromJson(json);
  Map<String, dynamic> toJson() => _$MetaAthleteModelToJson(this);
}
