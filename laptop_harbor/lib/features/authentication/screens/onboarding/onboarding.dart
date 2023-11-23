import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:laptop_harbor/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:laptop_harbor/features/authentication/screens/onboarding/widgets/onboarding_navigation.dart';
import 'package:laptop_harbor/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:laptop_harbor/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:laptop_harbor/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:laptop_harbor/utils/constants/colors.dart';
import 'package:laptop_harbor/utils/constants/image_strings.dart';
import 'package:laptop_harbor/utils/constants/sizes.dart';
import 'package:laptop_harbor/utils/constants/text_strings.dart';
import 'package:laptop_harbor/utils/device/device_utility.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utils/helpers/helper_functions.dart';
import 'onboarding.dart';
import 'onboarding.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                  image: LHImages.onBoardingImage1,
                  title: LHTexts.onBoardingTitle1,
                  subTitle: LHTexts.onBoardingSubTitle1),
              OnBoardingPage(
                  image: LHImages.onBoardingImage2,
                  title: LHTexts.onBoardingTitle2,
                  subTitle: LHTexts.onBoardingSubTitle2),
              OnBoardingPage(
                  image: LHImages.onBoardingImage3,
                  title: LHTexts.onBoardingTitle3,
                  subTitle: LHTexts.onBoardingSubTitle3),
            ],
          ),
          //Skip button
          const OnBoardingSkip(),
          // Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),
          // Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}

