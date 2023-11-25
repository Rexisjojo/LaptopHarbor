import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:laptop_harbor/common/widgets/success_screen/success_screen.dart';
import 'package:laptop_harbor/features/authentication/screens/login/login.dart';
import 'package:laptop_harbor/utils/constants/image_strings.dart';
import 'package:laptop_harbor/utils/constants/sizes.dart';
import 'package:laptop_harbor/utils/constants/text_strings.dart';
import 'package:laptop_harbor/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(LHSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(
                image: const AssetImage(LHImages.deliveredEmailIllustration),
                width: LHHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: LHSizes.spaceBtwSections),

              /// Title & subTitle
              Text(LHTexts.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: LHSizes.spaceBtwSections),
              Text('support@LaptopHarbor.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),
              const SizedBox(height: LHSizes.spaceBtwSections),
              Text(LHTexts.confirmEmailSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: LHSizes.spaceBtwSections),

              /// Buttons
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(() =>  SuccessScreen(
                            image: LHImages.staticSuccessIllustration,
                            title: LHTexts.yourAccountCreatedTitle,
                            subTitle: LHTexts.yourAccountCreatedSubTitle,
                            onPressed: () => Get.to(() => const LoginScreen()),
                          ),),
                      child: const Text('Continue'))),
              const SizedBox(height: LHSizes.spaceBtwItems),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(LHTexts.resendEmail))),
            ],
          ),
        ),
      ),
    );
  }
}
