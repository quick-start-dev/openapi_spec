import 'package:openapi_spec/src/parser/exceptions.dart';
import 'package:openapi_spec/src/util/enums.dart';
import 'package:openapi_spec/src/util/helpers.dart';
import 'package:test/test.dart';

void main() {
  group('ParameterLocation', () {
    test('fromString() should return the correct enum for valid input', () {
      expect(ParameterLocation.fromString('query'), ParameterLocation.query);
      expect(ParameterLocation.fromString('header'), ParameterLocation.header);
      expect(ParameterLocation.fromString('path'), ParameterLocation.path);
      expect(ParameterLocation.fromString('cookie'), ParameterLocation.cookie);
      expect(ParameterLocation.fromString('body'), ParameterLocation.body);
      expect(
        ParameterLocation.fromString('formData'),
        ParameterLocation.formData,
      );
    });

    test('fromString() should be case-insensitive', () {
      expect(ParameterLocation.fromString('QUERY'), ParameterLocation.query);
      expect(ParameterLocation.fromString('Header'), ParameterLocation.header);
      expect(ParameterLocation.fromString('pAtH'), ParameterLocation.path);
    });

    test('fromString() should throw an ArgumentError for invalid input', () {
      expect(
        () => ParameterLocation.fromString('invalid'),
        throwsA(isA<ArgumentError>()),
      );
    });
  });

  group('Format', () {
    test('fromValue() should return the correct enum for a valid value', () {
      expect(Format.fromValue('int32'), Format.int32);
      expect(Format.fromValue('float'), Format.float);
      expect(Format.fromValue('date-time'), Format.dateTime);
      expect(Format.fromValue('password'), Format.password);
    });

    test('fromValue() should return null for an invalid value', () {
      expect(Format.fromValue('invalid-format'), isNull);
      expect(Format.fromValue('custom-format'), isNull);
    });
  });
  group('numOrNull', () {
    test('should return null for a null value', () {
      expect(numOrNull(null), isNull);
    });

    test('should return the number if the value is a num', () {
      expect(numOrNull(10), 10);
      expect(numOrNull(10.5), 10.5);
    });

    test('should return the parsed number for a valid string', () {
      expect(numOrNull('123'), 123);
      expect(numOrNull('123.45'), 123.45);
    });

    test('should return null for an invalid string', () {
      expect(numOrNull('not a number'), isNull);
    });
  });

  group('intOrNull', () {
    test('should return null for a null value', () {
      expect(intOrNull(null), isNull);
    });

    test('should return the integer if the value is an int', () {
      expect(intOrNull(10), 10);
    });

    test('should return the parsed integer for a valid string', () {
      expect(intOrNull('123'), 123);
    });

    test('should return null for a non-integer number string', () {
      expect(intOrNull('123.45'), isNull);
    });

    test('should return null for an invalid string', () {
      expect(intOrNull('not an integer'), isNull);
    });
  });
  group('OpenApiParserException', () {
    test(
      'toString() should return a message without a location when not provided',
      () {
        const exception = OpenApiParserException('Test message');
        expect(exception.toString(), 'OpenApiParserException: Test message');
      },
    );

    test('toString() should return a message with a location when provided', () {
      const exception = OpenApiParserException(
        'Another test message',
        location: 'components/schemas/User',
      );
      expect(
        exception.toString(),
        'OpenApiParserException at components/schemas/User: Another test message',
      );
    });
  });
}
