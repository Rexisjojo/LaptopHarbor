import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:laptop_harbor/common/styles/spacing_styles.dart';
import 'package:laptop_harbor/utils/constants/colors.dart';
import 'package:laptop_harbor/utils/constants/image_strings.dart';
import 'package:laptop_harbor/utils/constants/sizes.dart';
import 'package:laptop_harbor/utils/constants/text_strings.dart';
import 'package:laptop_harbor/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = LHHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: LHSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, Title, SubTitle
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                        dark ? LHImages.lightAppLogo : LHImages.darkAppLogo),
                  ),
                  Text(
                    LHTexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: LHSizes.sm,
                  ),
                  Text(
                    LHTexts.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ],
              ),

              Form(
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
                              onPressed: () {},
                              child: const Text(LHTexts.forgetPassword))
                        ],
                      ),
                      const SizedBox(height: LHSizes.spaceBtwSections),

                      // Sign in Button
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: const Text(LHTexts.signIn))),
                      const SizedBox(height: LHSizes.spaceBtwItems),
                      // Create Account Button
                      SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                              onPressed: () {},
                              child: const Text(LHTexts.createAccount))),
                    ],
                  ),
                ),
              ),

              //Divider

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      child: Divider(
                    color: dark ? LHColors.darkerGrey : LHColors.grey,
                    thickness: 0.5,
                    indent: 60,
                    endIndent: 5,
                  )),
                  Text(LHTexts.orSignInWith.capitalize!,
                      style: Theme.of(context).textTheme.labelMedium),
                  Flexible(
                      child: Divider(
                    color: dark ? LHColors.darkerGrey : LHColors.grey,
                    thickness: 0.5,
                    indent: 5,
                    endIndent: 60,
                  ))
                ],
              ),

              const SizedBox(height: LHSizes.spaceBtwSections,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: LHColors.grey),
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Image(
                            height: LHSizes.iconMd,
                            width: LHSizes.iconMd,
                            image: AssetImage(LHImages.google))
                    ),
                  ),

                  const SizedBox(width: LHSizes.spaceBtwItems,),

                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: LHColors.grey),
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Image(
                            height: LHSizes.iconMd,
                            width: LHSizes.iconMd,
                            image: AssetImage(LHImages.facebook))
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
