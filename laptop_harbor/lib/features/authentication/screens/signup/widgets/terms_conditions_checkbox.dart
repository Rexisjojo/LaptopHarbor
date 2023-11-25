import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';


class LHTermsAndConditionCheckbox extends StatelessWidget {
  const LHTermsAndConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final dark = LHHelperFunctions.isDarkMode(context);
    return Row(
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
    );
  }
}