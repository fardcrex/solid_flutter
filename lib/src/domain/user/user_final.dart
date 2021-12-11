import 'package:charla_solid/src/core/value_objects.dart';

class UserFinal {
  final String id;
  final NamePerson name;
  final EdadPerson edad;

  UserFinal(
    this.id,
    this.name,
    this.edad,
  );

  factory UserFinal.fromServer() {
    return UserFinal(
      '3123-123-1231-2312',
      NamePerson('Robot001 G4ll¡to d3 las Roc@s'),
      EdadPerson(-22),
    );
  }
  factory UserFinal.succes() {
    return UserFinal(
      '3123-123-1231-2312',
      NamePerson('Naruto Uzumaki'),
      EdadPerson(25),
    );
  }
}

class NamePerson extends ValueObject<String> {
  static const int maxLength = 50;
  static const int minLength = 1;
  static const nameRegex = r'^([A-Za-z0-9-_ :.)(])*$';

  @override
  final Result<String, ValueFailure<String>> value;

  factory NamePerson(String input) {
    return NamePerson._(
      validateNamePerson(input),
    );
  }
  const NamePerson._(this.value);

  static Result<String, ValueFailure<String>> validateNamePerson(String input) {
    final nameWithoutSpaces = input.trim();

    if (nameWithoutSpaces.isEmpty) return Err(ValueFailure(nameWithoutSpaces));

    if (nameWithoutSpaces.length > maxLength) return Err(ValueFailure(nameWithoutSpaces));

    if (!RegExp(nameRegex).hasMatch(nameWithoutSpaces)) return Err(ValueFailure(nameWithoutSpaces));

    return Ok(nameWithoutSpaces);
  }
}

class EdadPerson extends ValueObject<int> {
  @override
  final Result<int, ValueFailure<int>> value;

  factory EdadPerson(int input) {
    return EdadPerson._(
      validateEdadPerson(input),
    );
  }
  const EdadPerson._(this.value);

  static Result<int, ValueFailure<int>> validateEdadPerson(int input) {
    if (input < 0) return Err(ValueFailure(input));

    if (input > 150) return Err(ValueFailure(input));

    return Ok(input);
  }
}
