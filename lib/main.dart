import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:item/utils/translations.dart';
import 'views/bottom_nav_bar.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Map<String, Map<String, String>> translationData = await loadJsonFromAssets();

  runApp(MyApp(translationData));
}

class MyApp extends StatelessWidget {
  final Map<String, Map<String, String>> translationData;

  const MyApp(this.translationData, {super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'title'.tr,
      translations: CustomTranslations(translationData),
      locale: PlatformDispatcher.instance.locale,
      fallbackLocale: const Locale('en', 'US'),
      home: const BottomNavBar(),
    );
  }
}