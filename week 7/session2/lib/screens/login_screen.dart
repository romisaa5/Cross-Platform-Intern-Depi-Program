import 'package:flutter/material.dart';
import 'package:session2/widgets/custom_login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CustomLoginForm());
  }
}
