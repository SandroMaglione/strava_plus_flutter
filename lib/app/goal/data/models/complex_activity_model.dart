import 'package:mobile_polimi_project/app/goal/data/models/compose_activity_model.dart';
import 'package:mobile_polimi_project/app/goal/data/models/data_activity_model.dart';
import 'package:mobile_polimi_project/app/goal/domain/entities/complex_activity.dart';

abstract class ComplexActivityModel extends ComplexActivity {
  const ComplexActivityModel();

  factory ComplexActivityModel.fromJson(Map<String, dynamic> json) {
    if (json["activityId"] != null) {
      return DataActivityModel.fromJson(json);
    } else if (json["operation"] != null) {
      return ComposeActivityModel.fromJson(json);
    } else {
      throw const FormatException(
          "[ComplexActivityModel]: Could not determine the constructor for mapping from JSON");
    }
  }

  Map<String, dynamic> toJson();
}
