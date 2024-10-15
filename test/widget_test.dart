import 'package:flutter_test/flutter_test.dart';
import 'package:projeto_c214/Model/user.dart';

void main() {
  group('User', () {
    test('Deve criar um usuário corretamente', () {
      final user =
          User(name: 'Laura', email: 'laura@example.com', password: '12345');

      expect(user.name, 'Laura');
      expect(user.email, 'laura@example.com');
      expect(user.password, '12345');
    });

    test('Deve exibir os detalhes do usuário', () {
      final user =
          User(name: 'Laura', email: 'laura@example.com', password: '12345');

      // Aqui podemos apenas verificar se os atributos estão configurados corretamente
      expect(user.name, 'Laura');
      expect(user.email, 'laura@example.com');
      expect(user.password, '12345');
    });
  });
}
