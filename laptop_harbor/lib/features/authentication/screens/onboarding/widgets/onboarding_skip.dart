import 'package:flutter/material.dart';
import 'package:laptop_harbor/features/authentication/controllers.onboarding/onboarding_controller.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: LHDeviceUtils.getAppBarHeight(),
        right: LHSizes.defaultSpace,
        child: TextButton(onPressed: () => OnBoardingController.instance.skipPage(), child: const Text('Skip')));
  }
}
