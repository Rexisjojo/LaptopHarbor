import 'package:flutter/material.dart';
import 'package:laptop_harbor/common/widgets/appbar/appbar.dart';
import 'package:laptop_harbor/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:laptop_harbor/utils/constants/colors.dart';
import 'package:laptop_harbor/utils/constants/text_strings.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/products/cart/cart_menu_icon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            LHPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// AppBar
                  LHHomeAppBar(),

                  /// SearchBar

                  /// Categories
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
