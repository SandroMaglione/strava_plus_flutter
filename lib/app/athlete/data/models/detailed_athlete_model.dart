import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:mobile_polimi_project/app/athlete/domain/entities/detailed_athlete.dart';

part 'detailed_athlete_model.g.dart';

@JsonSerializable()
class DetailedAthleteModel extends DetailedAthlete {
  @override
  final int id;
  final int resource_state;
  final String first_name;
  final String last_name;
  final String profile_medium;
  @override
  final String profile;
  @override
  final String city;
  @override
  final String state;
  @override
  final String sex;
  @override
  final bool premium;
  @override
  final bool summit;
  final DateTime created_at;
  final DateTime updated_at;
  final int follower_count;
  final int friend_count;
  final String measurement_preference;
  @override
  final int ftp;
  @override
  final double weight;

  const DetailedAthleteModel({
    @required this.id,
    @required this.resource_state,
    @required this.first_name,
    @required this.last_name,
    @required this.profile_medium,
    @required this.profile,
    @required this.city,
    @required this.state,
    @required this.sex,
    @required this.premium,
    @required this.summit,
    @required this.created_at,
    @required this.updated_at,
    @required this.follower_count,
    @required this.friend_count,
    @required this.measurement_preference,
    @required this.ftp,
    @required this.weight,
  });

  factory DetailedAthleteModel.fromJson(Map<String, dynamic> json) =>
      _$DetailedAthleteModelFromJson(json);
  Map<String, dynamic> toJson() => _$DetailedAthleteModelToJson(this);

  @override
  DateTime get createdAt => created_at;

  @override
  String get firstName => first_name;

  @override
  int get followerCount => follower_count;

  @override
  int get friendCount => friend_count;

  @override
  String get lastName => last_name;

  @override
  String get measurementPreference => measurement_preference;

  @override
  String get profileMedium => profile_medium;

  @override
  int get resourceState => resource_state;

  @override
  DateTime get updatedAt => updated_at;
}
