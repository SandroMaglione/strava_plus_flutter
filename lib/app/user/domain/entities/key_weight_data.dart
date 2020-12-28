import 'package:mobile_polimi_project/app/user/data/models/weight_data_model.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/user_data.dart';

abstract class KeyWeightData extends UserData<double> {
  const KeyWeightData();

  int get index;

  WeightDataModel get toWeightModel => WeightDataModel(
        dateTime: dateTime,
        value: value,
      );
}
