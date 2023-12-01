import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'views/bottom_nav_bar.dart';
import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          "title": "Item",
          "home": "Home",
          "upload": "Upload",
          "settings": "Settings"
        },
        'zh_CN': {
          "title": "持物",
          "home": "主页面",
          "upload": "上传",
          "settings": "设置"
        },
      };
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    GetMaterialApp(
      title: 'title'.tr,
      translations: Messages(),
      locale: ui.window.locale,
      fallbackLocale: const Locale('en', 'US'),
      home: const BottomNavBar(),
    ),
  );
}

/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'title'.tr,
      translations: MyTranslations(translations),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      home: const BottomNavBar(),
    );
  }
}
*/
