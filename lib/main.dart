import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'controllers/auth_controller.dart';
import 'controllers/navigation_controller.dart';
import 'controllers/theme_controller.dart';
import 'utils/app_themes.dart';
import 'view/splash_screen.dart';

void main() async {
  await GetStorage.init();
  Get.put(ThemeController());
  Get.put(AuthController());
  Get.put(NavigationController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();
    return GetMaterialApp(
      title: 'Bima Shops',
      theme: AppThemes.light,
      darkTheme: AppThemes.dark,
      themeMode: themeController.theme,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.fade,
      home: const SplashScreen(),
    );
  }
}