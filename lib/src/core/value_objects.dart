// ignore_for_file: avoid_renaming_method_parameters

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oxidized/oxidized.dart';
export 'package:oxidized/oxidized.dart';

// 🌎 Project imports:

@immutable
abstract class ValueObject<T extends Object> {
  const ValueObject();
  Result<T, ValueFailure<T>> get value;

  T getOrCrash() {
    return value.unwrapOrElse((p0) => throw p0);
  }

  bool isValid() => value.isOk();
  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

class ValueFailure<T> {
  final T value;

  ValueFailure(this.value);
}
