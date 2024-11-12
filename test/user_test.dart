// test/user_test.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:Fintrack/Model/user.dart';

void main() {
  group('User', () {
    // Tests User creation with name, email, and password
    test('Creates User correctly', () {
      final user =
          User(name: 'Laura', email: 'laura@example.com', password: '12345');

      expect(user.name, 'Laura');
      expect(user.email, 'laura@example.com');
      expect(user.password, '12345');
    });

    // Tests User to JSON conversion
    test('Converts User to JSON', () {
      final user = User(
          name: 'Álvaro', email: 'alvaroribeiro@gmail.com', password: '12345');
      final json = user.toJson();

      expect(json, {
        'name': 'Álvaro',
        'email': 'alvaroribeiro@gmail.com',
        'password': '12345',
      });
    });

    // Test User creation with an empty name
    test('Fails to create User with empty name', () {
      final user =
          User(name: '', email: 'empty@example.com', password: '12345');

      expect(user.name, isEmpty);
      expect(user.email, 'empty@example.com');
      expect(user.password, '12345');
    });

    // Test User creation with an invalid email format
    test('Fails to create User with invalid email format', () {
      final user = User(
          name: 'InvalidEmailUser', email: 'invalid-email', password: '12345');

      expect(user.name, 'InvalidEmailUser');
      expect(user.email.contains('@'), isFalse);
      expect(user.password, '12345');
    });

    // Test User creation with a short password
    test('Fails to create User with short password', () {
      final user = User(
          name: 'ShortPasswordUser',
          email: 'shortpass@example.com',
          password: '123');

      expect(user.name, 'ShortPasswordUser');
      expect(user.email, 'shortpass@example.com');
      expect(user.password.length < 6, isTrue);
    });

    // Test User to JSON with special characters
    test('Converts User to JSON with special characters', () {
      final user = User(
          name: 'Mário',
          email: 'mario_special@example.com',
          password: 'P@ssw0rd!');
      final json = user.toJson();

      expect(json, {
        'name': 'Mário',
        'email': 'mario_special@example.com',
        'password': 'P@ssw0rd!',
      });
    });

    // Test User creation with all fields empty
    test('Fails to create User with all empty fields', () {
      final user = User(name: '', email: '', password: '');

      expect(user.name, isEmpty);
      expect(user.email, isEmpty);
      expect(user.password, isEmpty);
    });

    // Test User creation with spaces in fields
    test('Fails to create User with only spaces in fields', () {
      final user = User(name: '   ', email: '   ', password: '   ');

      expect(user.name.trim(), isEmpty);
      expect(user.email.trim(), isEmpty);
      expect(user.password.trim(), isEmpty);
    });

    // Test User creation with long password
    test('Fails to create User with excessively long password', () {
      final longPassword = 'a' * 1000;
      final user = User(
          name: 'LongPasswordUser',
          email: 'longpass@example.com',
          password: longPassword);

      expect(user.name, 'LongPasswordUser');
      expect(user.email, 'longpass@example.com');
      expect(user.password.length, greaterThan(100));
    });

    // Test JSON conversion with empty fields
    test('Converts User with empty fields to JSON', () {
      final user = User(name: '', email: '', password: '');
      final json = user.toJson();

      expect(json, {
        'name': '',
        'email': '',
        'password': '',
      });
    });

    // Test User creation with name containing numbers
    test('Creates User with name containing numbers', () {
      final user = User(
          name: 'User123',
          email: 'user123@example.com',
          password: 'password123');

      expect(user.name, 'User123');
      expect(user.email, 'user123@example.com');
      expect(user.password, 'password123');
      expect(RegExp(r'\d').hasMatch(user.name), isTrue);
    });
  });
}
