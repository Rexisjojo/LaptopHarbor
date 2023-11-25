import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:laptop_harbor/common/styles/spacing_styles.dart';
import 'package:laptop_harbor/features/authentication/screens/login/widgets/login_form.dart';
import 'package:laptop_harbor/features/authentication/screens/login/widgets/login_header.dart';
import 'package:laptop_harbor/utils/constants/sizes.dart';
import 'package:laptop_harbor/utils/constants/text_strings.dart';
import 'package:laptop_harbor/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';

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
              const LHLoginHeader(),

              const LHLoginForm(),

              //Divider

              LHFormDivider(dividerText: LHTexts.orSignInWith.capitalize!),

              const SizedBox(height: LHSizes.spaceBtwSections,),

              //Footer
              const LHSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}








