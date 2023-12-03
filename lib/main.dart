import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:studio_1960/screens/routestack.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Studion 1960',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontSize: 14,
          ),
          bodyLarge: TextStyle(
            fontSize: 18,
          ),
          bodySmall: TextStyle(
            fontSize: 12,
          ),
        ),
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          onBackground: Color.fromRGBO(68, 68, 69, 1),
          background: Color.fromRGBO(68, 68, 69, 1),
          onPrimary: Color.fromRGBO(68, 68, 69, 1),
          onSecondary: Color.fromRGBO(68, 68, 69, 1),
          primary: Color.fromRGBO(68, 68, 69, 1),
          secondary: Color.fromRGBO(68, 68, 69, 1),
          onError: Color.fromRGBO(68, 68, 69, 1),
          surface: Color.fromRGBO(255, 255, 255, 1),
          onSurface: Color.fromRGBO(245, 245, 247, 1),
          error: Color.fromRGBO(68, 68, 69, 1),
        ),
      ),
      home: Builder(builder: (context) {
        return const RouteStack();
      }),
    );
  }
}
