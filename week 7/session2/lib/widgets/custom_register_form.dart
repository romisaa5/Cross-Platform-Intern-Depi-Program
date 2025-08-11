import 'package:flutter/material.dart';
import 'package:session2/helper/validation_methods.dart';
import 'package:session2/screens/home_screen.dart';
import 'package:session2/screens/login_screen.dart';
import 'package:session2/theme/app_color.dart';
import 'package:session2/theme/text_styles.dart';
import 'package:session2/widgets/custom_button.dart';
import 'package:session2/widgets/custom_divider.dart';
import 'package:session2/widgets/custom_facebook_gmail.dart';
import 'package:session2/widgets/custom_text_form_field.dart';

class CustomRegisterForm extends StatefulWidget {
  const CustomRegisterForm({super.key});

  @override
  State<CustomRegisterForm> createState() => _CustomRegisterFormState();
}

class _CustomRegisterFormState extends State<CustomRegisterForm> {
  bool isshowPassword = false;
  bool isshowConfirmPassword = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Register',
              style: Styles.textStyle48.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColor.kPrimaryColor,
              ),
            ),
            Text('Name', style: Styles.textStyle18),
            AppTextFormField(
              controller: nameController,
              onChanged: (value) {},
              hintText: 'Your Name, e.g : John Doe',
              validator: (value) => ValidationMethods.validateUsername(value),
            ),
            Text('Email', style: Styles.textStyle18),
            AppTextFormField(
              controller: emailController,
              hintText: 'Enter your email',
              validator: (value) => ValidationMethods.validateEmail(value),
            ),
            Text('Phone Number', style: Styles.textStyle18),
            AppTextFormField(
              keyboardType: TextInputType.number,
              controller: phoneController,
              hintText: 'Your phone number, e.g : +01 112 xxx xxx',
              validator: (value) => ValidationMethods.validatephone(value),
            ),

            Text('Password', style: Styles.textStyle18),
            AppTextFormField(
              controller: passwordController,
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
              hintText: 'Enter your password',
              validator: (value) => ValidationMethods.validatePassword(value),
            ),
            Text('Confirm Password', style: Styles.textStyle18),
            AppTextFormField(
              controller: confirmPasswordController,
              onChanged: (value) {},
              maxLines: 1,
              isObscureText: !isshowConfirmPassword,
              suffixIcon: IconButton(
                icon: Icon(
                  isshowConfirmPassword
                      ? Icons.visibility
                      : Icons.visibility_off,
                  color: AppColor.greydark,
                ),
                onPressed: () {
                  setState(() {
                    isshowConfirmPassword = !isshowConfirmPassword;
                  });
                },
              ),
              hintText: 'Re-type your password',
              validator:
                  (value) => ValidationMethods.validateConfirmPassword(value),
            ),

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
              text: 'Register',
              color: AppColor.kPrimaryColor,
              width: double.infinity,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'already have an account? Login',
                  style: Styles.textStyle12,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginScreen();
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
            CustomDivider(text: 'Or register with'),
            SizedBox(height: 5),
            CustomFacebookGmail(),
          ],
        ),
      ),
    );
  }
}
