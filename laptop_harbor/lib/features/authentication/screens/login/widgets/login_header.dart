import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class LHLoginHeader extends StatelessWidget {
  const LHLoginHeader({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final  dark = LHHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
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
    );
  }
}