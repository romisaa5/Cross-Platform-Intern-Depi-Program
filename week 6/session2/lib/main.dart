import 'package:flutter/material.dart';
import 'package:session2/views/login_view.dart';

void main() {
  runApp(const AuthScreens());
}

class AuthScreens extends StatelessWidget {
  const AuthScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginView());
  }
}
