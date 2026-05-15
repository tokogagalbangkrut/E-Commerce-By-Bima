import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'main_screen.dart';
import 'signin_screen.dart';
import 'widgets/custom_textfield.dart'; // Import CustomTextField
import '../utils/app_textstyles.dart'; // Import AppTextStyle

class SignUpScreen extends StatelessWidget {
  // Remove 'const' constructor because controllers can't be constant
  SignUpScreen({super.key});

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // get back button
              IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Icons.arrow_back),
                color: isDark ? Colors.white : Colors.black,
              ),
              const SizedBox(height: 20),
              Text(
                'Create Account',
                style: AppTextstyles.withColor(
                  AppTextstyles.h1,
                  Theme.of(context).textTheme.bodyLarge!.color!,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Sign up to get started',
                style: AppTextstyles.withColor(
                  AppTextstyles.bodyLarge,
                  isDark ? Colors.grey[400]! : Colors.grey[600]!,
                ),
              ),
              const SizedBox(height: 40),
              // full name text field
              CustomTextField(
                label: 'Full Name',
                prefixIcon: Icons.person,
                controller: _nameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Silahkan masukkan nama Lengkap Anda';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              // email text field
              CustomTextField(
                label: 'Email',
                prefixIcon: Icons.email_outlined,
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Silahkan masukkan email Anda';
                  }
                  if (GetUtils.isEmail(value) == false) {
                    return 'Silahkan masukkan email yang valid';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              // password text field
              CustomTextField(
                label: 'Password',
                prefixIcon: Icons.lock_outline,
                keyboardType: TextInputType.visiblePassword,
                controller: _passwordController,
                isPassword: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Silahkan masukkan password Anda';
                  }
                  if (value.length < 6) {
                    return 'Password harus minimal 6 karakter';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              // confirm password text field
              CustomTextField(
                label: 'Confirm Password',
                prefixIcon: Icons.lock_outline,
                controller: _confirmPasswordController,
                isPassword: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Silahkan konfirmasi password Anda';
                  }
                  if (value != _passwordController.text) {
                    return 'Password tidak cocok';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              // forgot password button
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Add forgot password logic here
                    Get.snackbar(
                      'Forgot Password',
                      'Reset link will be sent to your email',
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  },
                  child: Text(
                    'Forgot Password?',
                    style: AppTextstyles.withColor(
                      AppTextstyles.buttonMedium,
                      Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // sign up button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.off(() => const MainScreen()),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Sign Up',
                    style: AppTextstyles.withColor(
                      AppTextstyles.buttonMedium,
                      Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              // sign in text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: AppTextstyles.withColor(
                      AppTextstyles.bodyMedium,
                      isDark ? Colors.grey[400]! : Colors.grey[600]!,
                    ),
                  ),
                  TextButton(
                    onPressed: () => Get.to(() => SignInScreen()),
                    child: Text(
                      "Sign In",
                      style: AppTextstyles.withColor(
                        AppTextstyles.bodyMedium,
                        Theme.of(context).primaryColor,
                      ),
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