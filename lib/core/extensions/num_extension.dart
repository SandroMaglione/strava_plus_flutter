extension NumToTime on int {
  String get doubleDigit => this < 10 ? '0$this' : '$this';
}

extension PlusMinus on double {
  String get plusMinus =>
      this >= 0 ? '+${this.toStringAsFixed(1)}' : '${this.toStringAsFixed(1)}';
}
