import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:Fintrack/View/login_screen.dart';
import 'package:Fintrack/View/pie_chart.dart';
import 'package:Fintrack/View/register_screen.dart';

void main() {
  group('Widget Tests for RegisterPage', () {
    testWidgets('should display the registration form with inputs and button',
        (WidgetTester tester) async {
      // Sets a larger screen height to prevent overflow
      await tester.pumpWidget(
        MaterialApp(
          home: MediaQuery(
            data: const MediaQueryData(size: Size(800, 1400)),
            child: RegisterPage(),
          ),
        ),
      );

      // Checks if text fields and the button are present
      expect(find.text('XicoCoin'), findsOneWidget);
      expect(find.text('Olá, crie sua conta preenchendo os campos abaixo:'),
          findsOneWidget);
      expect(find.text('Cadastrar'), findsOneWidget);
      expect(find.byType(TextField), findsNWidgets(3));
    });
  });

  group('Widget Tests for LoginScreen', () {
    testWidgets('should display the login form with inputs and button',
        (WidgetTester tester) async {
      // Sets a larger screen height to prevent overflow
      await tester.pumpWidget(
        MaterialApp(
          home: MediaQuery(
            data: const MediaQueryData(size: Size(800, 1400)),
            child: LoginScreen(),
          ),
        ),
      );

      // Checks if text fields and the button are present
      expect(find.text('Faça seu login abaixo:'), findsOneWidget);
      expect(find.text('Login'), findsOneWidget);
      expect(find.byType(TextField), findsNWidgets(2));
    });
  });
}
