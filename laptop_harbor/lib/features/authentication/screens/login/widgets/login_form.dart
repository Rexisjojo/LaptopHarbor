import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:laptop_harbor/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:laptop_harbor/features/authentication/screens/signup/signup.dart';
import 'package:laptop_harbor/navigation_menu.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class LHLoginForm extends StatelessWidget {
  const LHLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: LHSizes.spaceBtwSections),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: LHTexts.email),
            ),
            const SizedBox(height: LHSizes.spaceBtwInputFields),
            // Password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: LHTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: LHSizes.spaceBtwInputFields / 2),
            // Remember me & Forgot Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(LHTexts.rememberMe),
                  ],
                ),
                // Forgot Password
                TextButton(
                    onPressed: () => Get.to(() => const ForgetPassword()),
                    child: const Text(LHTexts.forgetPassword))
              ],
            ),
            const SizedBox(height: LHSizes.spaceBtwSections),

            // Sign in Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => const NavigationMenu()),
                    child: const Text(LHTexts.signIn))),
            const SizedBox(height: LHSizes.spaceBtwItems),
            // Create Account Button
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () => Get.to(() => const SignupScreen()),
                    child: const Text(LHTexts.createAccount))),
          ],
        ),
      ),
    );
  }
}