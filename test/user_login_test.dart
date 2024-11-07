// test/user_login_test.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:projeto_c214/Model/userLogin.dart';

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
      expect(userLogin.password.length < 6, isTrue); // Espera senha muito curta
    });

    // Testa criação de UserLogin com caracteres especiais no email
    test('Creates UserLogin with special characters in email', () {
      final userLogin =
          UserLogin(email: 'user!@example.com', password: '12345');

      expect(userLogin.email, 'user!@example.com');
      expect(userLogin.password, '12345');
    });
  });
}
