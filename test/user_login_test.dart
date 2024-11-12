// test/user_login_test.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:Fintrack/Model/userLogin.dart';

void main() {
  group('UserLogin', () {
    // Testa criação de UserLogin com formato de email inválido
    test('Creates UserLogin with invalid email format', () {
      final userLogin = UserLogin(email: 'invalid_email', password: '12345');

      expect(userLogin.email, 'invalid_email');
      expect(userLogin.password, '12345');
    });

    // Testa criação de UserLogin com email vazio
    test('Creates UserLogin with empty email', () {
      final userLogin = UserLogin(email: '', password: '12345');

      expect(userLogin.email, isEmpty);
      expect(userLogin.password, '12345');
    });

    // Testa criação de UserLogin com senha vazia
    test('Creates UserLogin with empty password', () {
      final userLogin = UserLogin(email: 'user@example.com', password: '');

      expect(userLogin.email, 'user@example.com');
      expect(userLogin.password, isEmpty);
    });

    // Testa criação de UserLogin com senha muito curta
    test('Creates UserLogin with short password', () {
      final userLogin = UserLogin(email: 'user@example.com', password: '12');

      expect(userLogin.email, 'user@example.com');
      expect(userLogin.password.length < 6, isTrue);
    });

    // Testa criação de UserLogin com caracteres especiais no email
    test('Creates UserLogin with special characters in email', () {
      final userLogin =
          UserLogin(email: 'user!@example.com', password: '12345');

      expect(userLogin.email, 'user!@example.com');
      expect(userLogin.password, '12345');
    });

    // Testa conversão de UserLogin para JSON
    test('Converts UserLogin to JSON correctly', () {
      final userLogin =
          UserLogin(email: 'test@example.com', password: 'password123');
      final json = userLogin.toJson();

      expect(json, {
        'email': 'test@example.com',
        'password': 'password123',
      });
    });

    // Testa login válido com email e senha corretos
    test('Creates valid UserLogin with correct email and password', () {
      final userLogin =
          UserLogin(email: 'valid@example.com', password: 'validpassword');

      expect(userLogin.email, 'valid@example.com');
      expect(userLogin.password, 'validpassword');
      expect(userLogin.email.contains('@'), isTrue);
      expect(userLogin.password.length >= 6, isTrue);
    });

    // Testa login inválido com email contendo espaços
    test('Creates UserLogin with email containing spaces', () {
      final userLogin = UserLogin(
          email: 'invalid email@example.com', password: 'password123');

      expect(userLogin.email.contains(' '), isTrue);
      expect(userLogin.password, 'password123');
    });

    // Testa login inválido com senha contendo espaços
    test('Creates UserLogin with password containing spaces', () {
      final userLogin =
          UserLogin(email: 'user@example.com', password: 'pass word');

      expect(userLogin.email, 'user@example.com');
      expect(userLogin.password.contains(' '), isTrue);
    });
  });
}
