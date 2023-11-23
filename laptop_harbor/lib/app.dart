import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:laptop_harbor/features/authentication/screens/onBoarding/onboarding.dart';
import 'package:laptop_harbor/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: LHTheme.lightTheme,
      darkTheme: LHTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
