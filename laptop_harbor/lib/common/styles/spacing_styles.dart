import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';

class LHSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: LHSizes.appBarHeight,
    left: LHSizes.defaultSpace,
    bottom: LHSizes.defaultSpace,
    right: LHSizes.defaultSpace,
  );
}