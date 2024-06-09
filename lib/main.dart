import 'package:flutter/material.dart';
import 'package:rest_api/pages/users_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UsersPage(),
    );
  }
}
