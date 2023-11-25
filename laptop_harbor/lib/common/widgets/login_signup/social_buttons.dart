import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class LHSocialButtons extends StatelessWidget {
  const LHSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}