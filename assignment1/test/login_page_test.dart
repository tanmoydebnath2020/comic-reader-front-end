import 'package:flutter_test/flutter_test.dart';
import 'package:assignment1/AllPages/field_validator.dart';

void main() {
  group('validation check', () {
    test('validate email id', () {
      final fieldValidator = FieldValidator();
      var result = fieldValidator.validateEmail('');
      expect(result, 'Enter Email');
    });

    test('validate Password', () {
      final fieldValidator = FieldValidator();
      var result = fieldValidator.validatePassword('234567890467');
      expect(result, '');
    });
  });
}
