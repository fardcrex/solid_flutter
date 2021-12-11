class Name {
  final String value;

  Name(this.value);

  bool get isValid => RegExp(r'^([A-Za-z)(])*$').hasMatch(value);
}

class Edad {
  final int value;

  Edad(this.value);

  bool get isValid => value >= 0 && value < 150;
}
