import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:laptop_harbor/features/authentication/screens/signup/verify_email.dart';
import 'package:laptop_harbor/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';


class LHSignUpForm extends StatelessWidget {
  const LHSignUpForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          ///First Name and Last Name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: LHTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: LHSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: LHTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: LHSizes.spaceBtwInputFields),

          /// UserName
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: LHTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: LHSizes.spaceBtwInputFields),

          /// Email

          TextFormField(
            decoration: const InputDecoration(
              labelText: LHTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: LHSizes.spaceBtwInputFields),

          /// Phone Number

          TextFormField(
            decoration: const InputDecoration(
              labelText: LHTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: LHSizes.spaceBtwInputFields),

          /// Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                labelText: LHTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(height: LHSizes.spaceBtwInputFields),

          /// Terms & Conditions
          const LHTermsAndConditionCheckbox(),

          const SizedBox(height: LHSizes.spaceBtwSections),

          /// Signup Button
          SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const VerifyEmailScreen()), child: const Text(LHTexts.createAccount)),),
        ],
      ),
    );
  }
}
