import 'package:mobile_polimi_project/env/environment_setup.dart';
import 'package:mobile_polimi_project/main_common.dart';

Future<void> main() async {
  await mainCommon(() {
    return;
  }, const EnvironmentSetup.prod());
}
