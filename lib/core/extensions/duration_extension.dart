import 'package:mobile_polimi_project/core/extensions/num_extension.dart';

extension TimeFormat on Duration {
  String get toHHmmss =>
      '${this.dInHours.doubleDigit}:${this.dInMinutes.doubleDigit}:${this.dInSeconds.doubleDigit}';

  String get toHHhMMm =>
      '${this.dInHours.doubleDigit}h ${this.dInMinutes.doubleDigit}m';

  int get dInHours => (this.inSeconds / 3600).floor();
  int get dInMinutes =>
      ((this.inSeconds - (3600 * this.dInHours)) / 60).floor();
  int get dInSeconds =>
      (this.inSeconds - (3600 * this.dInHours) - (this.dInMinutes * 60))
          .floor();
}
