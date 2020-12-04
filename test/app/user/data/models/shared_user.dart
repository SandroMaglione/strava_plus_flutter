import 'package:mobile_polimi_project/app/user/data/models/sleep_data_model.dart';

abstract class SharedUser {
  static final goToBed = DateTime(2019, 10, 10, 22, 0, 0);
  static final wakeUp = DateTime(2019, 10, 11, 9, 0, 0);
  static final goToBedCopyWith = DateTime(2019, 10, 10, 23, 0, 0);
  static final wakeUpCopyWith = DateTime(2019, 10, 11, 10, 0, 0);
  static final goToBedCopyWithToInvalid = DateTime(2019, 10, 11, 23, 0, 0);
  static final wakeUpCopyWithToInvalid = DateTime(2019, 10, 9, 10, 0, 0);
  static final goToBedInvalid = DateTime(2019, 10, 11, 22, 0, 0);
  static final sleepDataModel = SleepDataModel(
    goToBed: goToBed,
    wakeUp: wakeUp,
  );
  static final sleepDataModelCopy = SleepDataModel(
    goToBed: goToBed,
    wakeUp: wakeUp,
  );
  static final sleepDataModelInvalid = SleepDataModel(
    goToBed: goToBedInvalid,
    wakeUp: wakeUp,
  );
  static final sleepDataModelWakeUp = SleepDataModel.wakeUp(
    wakeUp: wakeUp,
  );
  static final sleepDataModelGoToBed = SleepDataModel.goToBed(
    goToBed: goToBed,
  );
}
