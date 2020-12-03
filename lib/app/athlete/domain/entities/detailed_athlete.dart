import 'package:equatable/equatable.dart';

/// User Strava account information
/// https://developers.strava.com/docs/reference/#api-models-DetailedAthlete
abstract class DetailedAthlete extends Equatable {
  const DetailedAthlete();

  int get id;
  int get resourceState;
  String get firstName;
  String get lastName;
  String get profileMedium;
  String get profile;
  String get city;
  String get state;
  String get sex;
  bool get premium;
  bool get summit;
  DateTime get createdAt;
  DateTime get updatedAt;
  int get followerCount;
  int get friendCount;
  String get measurementPreference;
  int get ftp;
  double get weight;
  // int get clubs;
  // int get bikes;
  // int get shoes;
  // String get country;
  // String get coverPhoto;
  // String get coverPhotoSmall;
  // String get sportType;
  // bool get private;
  // int get memberCount;
  // bool get featured;
  // bool get verified;
  // String get url;
  // String get membership;
  // bool get admin;
  // bool get owner;
  // String get description;
  // String get clubType;
  // int get postCount;
  // int get ownerId;
  // int get followingCount;

  @override
  List<Object> get props => [id];
}
