import 'package:flutter/material.dart';
import 'package:session2/widgets/custom_header.dart';
import 'package:session2/widgets/custom_login_form.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final remainingHeight = screenHeight - 259;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: CustomHeader(title: 'Login'),
          ),
          Expanded(
            child: Positioned(
              top: 259,
              child: CustomLoginForm(hight: remainingHeight),
            ),
          ),
        ],
      ),
    );
  }
}
