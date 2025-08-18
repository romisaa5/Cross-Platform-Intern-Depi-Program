import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:session2/utils/validation_methods.dart';
import 'package:session2/utils/app_color.dart';
import 'package:session2/utils/text_styles.dart';
import 'package:session2/widgets/custom_button.dart';
import 'package:session2/widgets/custom_text_form_field.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({super.key});
  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: AppColor.kPrimaryColor),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Forget Password',
          style: Styles.textStyle16.copyWith(
            color: AppColor.kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(24.0.h),
        child: Form(
          key: formKey,
          child: Column(
            spacing: 20.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'We’ll send you an email with instructions to reset your password.',
                style: Styles.textStyle14,
              ),
              Text(
                'Enter your email to reset your password',
                style: Styles.textStyle14.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),

              AppTextFormField(
                controller: emailController,
                prefixIcon: Icon(Icons.email),
                hintText: 'Email',
                validator: (value) => ValidationMethods.validateEmail(value),
              ),
              CustomButton(
                text: 'Forget password',
                color: AppColor.kPrimaryColor,
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
