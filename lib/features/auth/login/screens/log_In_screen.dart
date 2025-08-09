import 'package:bosstify/features/home/screens/home_screen.dart';
import 'package:flutter/material.dart';
import '../../../../app/constants/app_colors.dart';
import '../../../../app/constants/app_text.dart';
import '../../../../widgets/buttons/custom_button.dart';
import '../../../../widgets/social_buttons/social_button.dart';
import '../../../../widgets/textfields/custom_text_field.dart';
import '../../signup/screens/sign_up_screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,

      // Body
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // top logo
              Center(child: Image(image: AssetImage("assets/logo/logo.png"))),

              // Welcome
              AppText(
                text: 'Welcome',
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: AppColors.black,
              ),

              const SizedBox(height: 10),
              AppText(
                text: 'Enters your details below',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.black,
              ),

              // Email Text Field
              const SizedBox(height: 30),
              CustomTextField(
                titleText: "Email",
                hintText: "Enter your email",
                borderColor: AppColors.black,
                focusedBorderColor: AppColors.teal,
                controller: emailController,
                width: double.infinity,
              ),

              // Password
              const SizedBox(height: 30),
              CustomTextField(
                titleText: "Password",
                hintText: "Enter your Password",
                borderColor: AppColors.black,
                focusedBorderColor: AppColors.teal,
                controller: passwordController,
                width: double.infinity,
              ),

              // Forget Password Text
              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Forgot Password
                  AppText(
                    text: 'Forget Password?',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.deepOrange,
                  ),
                ],
              ),

              // Login Button
              const SizedBox(height: 30),
              CustomButton(
                text: "Login",
                width: double.infinity,
                backgroundColor: AppColors.teal,
                textColor: AppColors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                borderRadius: 4,
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
              ),

              // Divider With Text
              const SizedBox(height: 30),
              Row(
                children: [
                  // Left divider
                  const Expanded(child: Divider(thickness: 2)),

                  // Text in center
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: AppText(
                      text: 'or continue with',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                  ),

                  // Right divider
                  const Expanded(child: Divider(thickness: 2)),
                ],
              ),

              // Google
              const SizedBox(height: 50),
              SocialButton(
                text: "Login with Google",
                iconPath: "assets/icons/google.png", // must exist
                width: double.infinity,
                onPressed: () {
                  // Google login logic here
                },
              ),

              // Don't Have An Account
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(
                    text: "Don't have an account?",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                  ),

                  const SizedBox(width: 8),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                    child: AppText(
                      text: "Sign UP",
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
