import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class LHHomeAppBar extends StatelessWidget {
  const LHHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LHAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(LHTexts.homeAppbarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: LHColors.grey)),
          Text(LHTexts.homeAppbarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: LHColors.white)),
        ],
      ),
      actions: [
        LHCartCounterIcon(
            onPressed: () {}, iconColor: LHColors.white)
      ],
    );
  }
}
