import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:laptop_harbor/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:laptop_harbor/utils/constants/sizes.dart';

import '../../../../utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(LHSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Heading
            Text(LHTexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: LHSizes.spaceBtwItems),
            Text(LHTexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: LHSizes.spaceBtwItems * 2),

            /// Text field
            TextFormField(
              decoration: const InputDecoration(
                  labelText: LHTexts.email,
                  prefixIcon: Icon(Iconsax.direct_right)),
            ),

            const SizedBox(height: LHSizes.spaceBtwItems),

            /// Submit Button

            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.off(() => const ResetPassword()),
                    child: const Text(LHTexts.submit)))
          ],
        ),
      ),
    );
  }
}
