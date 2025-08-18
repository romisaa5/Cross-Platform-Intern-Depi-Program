import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:session2/utils/validation_methods.dart';
import 'package:session2/screens/forget_password.dart';
import 'package:session2/screens/home_screen.dart';
import 'package:session2/screens/register_screen.dart';
import 'package:session2/utils/app_color.dart';
import 'package:session2/utils/text_styles.dart';
import 'package:session2/widgets/custom_button.dart';
import 'package:session2/widgets/custom_divider.dart';
import 'package:session2/widgets/custom_facebook_gmail.dart';
import 'package:session2/widgets/custom_text_form_field.dart';
import 'package:session2/widgets/remember_me.dart';

class CustomLoginForm extends StatefulWidget {
  const CustomLoginForm({super.key});

  @override
  State<CustomLoginForm> createState() => _CustomLoginFormState();
}

class _CustomLoginFormState extends State<CustomLoginForm> {
  bool isshowPassword = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: Column(
          spacing: 15.h,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.h),
            Text(
              ' Login ',
              style: Styles.textStyle48.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColor.kPrimaryColor,
              ),
            ),
            Text('Email', style: Styles.textStyle18),
            AppTextFormField(
              controller: emailController,
              hintText: 'Enter your email',
              validator: (value) => ValidationMethods.validateEmail(value),
            ),

            Text('Password', style: Styles.textStyle18),
            AppTextFormField(
              onChanged: (value) {},
              maxLines: 1,
              isObscureText: !isshowPassword,
              suffixIcon: IconButton(
                icon: Icon(
                  isshowPassword ? Icons.visibility : Icons.visibility_off,
                  color: AppColor.greydark,
                ),
                onPressed: () {
                  setState(() {
                    isshowPassword = !isshowPassword;
                  });
                },
              ),
              controller: passwordController,
              hintText: 'Enter your password',
              validator: (value) => ValidationMethods.validatePassword(value),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RememberMe(),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ForgetPassword();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Forgot Password?',
                    style: Styles.textStyle12.copyWith(
                      color: AppColor.greydarker,
                    ),
                  ),
                ),
              ],
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'By continuing, you agree to our ',
                    style: Styles.textStyle12,
                  ),
                  TextSpan(
                    text: 'Terms of Service',
                    style: Styles.textStyle12.copyWith(
                      color: AppColor.kPrimaryColor,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(text: ' and ', style: Styles.textStyle12),
                  TextSpan(
                    text: 'Privacy Policy',
                    style: Styles.textStyle12.copyWith(
                      color: AppColor.kPrimaryColor,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            CustomButton(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomeScreen();
                      },
                    ),
                    (route) => false,
                  );
                }
              },
              text: 'Login',
              color: AppColor.kPrimaryColor,
              width: double.infinity,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don’t have an account yet? Register',
                  style: Styles.textStyle12,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return RegisterScreen();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'here',
                    style: Styles.textStyle12.copyWith(
                      color: AppColor.kPrimaryColor,
                    ),
                  ),
                ),
              ],
            ),
            CustomDivider(text: 'Or login with'),
            SizedBox(height: 5),
            CustomFacebookGmail(),
          ],
        ),
      ),
    );
  }
}
