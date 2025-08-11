import 'package:flutter/material.dart';
import 'package:session2/widgets/custom_register_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomRegisterForm(),
    );
  }
}