import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:laptop_harbor/common/widgets/login_signup/form_divider.dart';
import 'package:laptop_harbor/common/widgets/login_signup/social_buttons.dart';
import 'package:laptop_harbor/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:laptop_harbor/utils/constants/sizes.dart';
import 'package:laptop_harbor/utils/constants/text_strings.dart';

import '../../../../utils/constants/colors.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(LHSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///   Title
              Text(LHTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: LHSizes.spaceBtwSections),

              /// Form
               const LHSignUpForm(),

              const SizedBox(height: LHSizes.spaceBtwSections),

              /// Divider
              LHFormDivider(dividerText: LHTexts.orSignUpWith.capitalize!),

              const SizedBox(height: LHSizes.spaceBtwSections),

              /// Social Icons
              const LHSocialButtons(),
              const SizedBox(height: LHSizes.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }
}

class LHSignupForm extends StatelessWidget {
  const LHSignupForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
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
          Row(
            children: [
              SizedBox(
                  width: 24,
                  height: 24,
                  child:
                      Checkbox(value: true, onChanged: (value) {})),
              const SizedBox(width: LHSizes.spaceBtwItems),
              Text.rich(
                TextSpan(children: [
                  TextSpan(
                      text: '${LHTexts.iAgreeTo} ',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: '${LHTexts.privacyPolicy} ',
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? LHColors.white : LHColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: dark ? LHColors.white : LHColors.primary,
                      )),
                  TextSpan(
                      text: '${LHTexts.and} ',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: '${LHTexts.termsOfUse} ',
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? LHColors.white : LHColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: dark ? LHColors.white : LHColors.primary,
                      )),
                ]),
              )
            ],
          ),

          const SizedBox(height: LHSizes.spaceBtwSections),

          /// Signup Button
           SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text(LHTexts.createAccount)),),
        ],
      ),
    );
  }
}
