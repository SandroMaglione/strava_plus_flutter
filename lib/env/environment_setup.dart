import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'environment_setup.freezed.dart';

/// Possible environments configurations
@freezed
abstract class EnvironmentSetup with _$EnvironmentSetup {
  /// Production environment
  const factory EnvironmentSetup.prod() = ProdEnvironmentSetup;

  /// Development environment
  const factory EnvironmentSetup.dev() = DevEnvironmentSetup;
}
