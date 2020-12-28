import 'package:mobile_polimi_project/app/user/data/models/key_weight_data_model.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/user_data.dart';

abstract class WeightData extends UserData<double> {
  const WeightData();

  KeyWeightDataModel toKeyModel(int index) => KeyWeightDataModel(
        index: index,
        dateTime: dateTime,
        value: value,
      );
}
