import 'package:flutter_test/flutter_test.dart';
import 'package:projeto_c214/services/tokenStorage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  group('TokenStorage', () {
    late TokenStorage tokenStorage;

    setUp(() {
      tokenStorage = TokenStorage();
      SharedPreferences.setMockInitialValues(
          {}); // Initialize SharedPreferences with empty values
    });

    // Tests saving and retrieving a token
    test('Must save and get a token', () async {
      await tokenStorage.saveToken('token123');
      final token = await tokenStorage.getToken();

      expect(token, 'token123');
    });

    // Tests if the user is logged in after saving a token
    test('Must remove a token', () async {
      await tokenStorage.saveToken('token123');
      await tokenStorage.removeToken();
      final token = await tokenStorage.getToken();

      expect(token, isNull);
    });

    // Tests if the user is logged in after saving a token
    test('Should check that you are logged in', () async {
      await tokenStorage.saveToken('token123');
      final isLoggedIn = await tokenStorage.isLoggedIn();

      expect(isLoggedIn, true);
    });

    // Tests saving and retrieving a token
    test('Saves and retrieves token', () async {
      await tokenStorage.saveToken('token123');
      final token = await tokenStorage.getToken();

      expect(token, 'token123');
    });

    // Tests if the user is logged in after saving a token
    test('Checks if user is logged in after saving token', () async {
      await tokenStorage.saveToken('token123');
      final isLoggedIn = await tokenStorage.isLoggedIn();

      expect(isLoggedIn, true);
    });

    // Tests removing a token and checking logged-out status
    test('Removes token and checks logged-out status', () async {
      await tokenStorage.saveToken('token123');
      await tokenStorage.removeToken();
      final isLoggedIn = await tokenStorage.isLoggedIn();

      expect(isLoggedIn, false);
    });

    // Tests if the user is logged out by default
    test('User is logged out by default', () async {
      final isLoggedIn = await tokenStorage.isLoggedIn();

      expect(isLoggedIn, false);
    });
  });
}
