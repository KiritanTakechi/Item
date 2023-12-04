import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'views/bottom_nav_bar.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Map<String, Map<String, String>> translationData = await loadJsonFromAssets();

  runApp(MyApp(translationData));
}

class MyApp extends StatelessWidget {
  final Map<String, Map<String, String>> translationData;

  MyApp(this.translationData, {super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'title'.tr,
      translations: CustomTranslations(translationData),
      locale: WidgetsBinding.instance.window.locale,
      fallbackLocale: const Locale('en', 'US'),
      home: const BottomNavBar(),
    );
  }
}

class CustomTranslations extends Translations {
  final Map<String, Map<String, String>> translationKeys;

  CustomTranslations(this.translationKeys);

  @override
  Map<String, Map<String, String>> get keys => translationKeys;
}

Future<Map<String, Map<String, String>>> loadJsonFromAssets() async {
  // 加载英文和中文JSON文件
  String jsonStringEn = await rootBundle.loadString('assets/translations/en-US.json');
  String jsonStringCn = await rootBundle.loadString('assets/translations/zh-CN.json');

  // 将JSON字符串解析为Map
  Map<String, dynamic> jsonMapEn = json.decode(jsonStringEn);
  Map<String, dynamic> jsonMapCn = json.decode(jsonStringCn);

  // 将Map<dynamic, dynamic>转换为Map<String, String>
  Map<String, String> mapEn = jsonMapEn.map((key, value) => MapEntry(key, value.toString()));
  Map<String, String> mapCn = jsonMapCn.map((key, value) => MapEntry(key, value.toString()));

  return {
    'en_US': mapEn,
    'zh_CN': mapCn,
  };
}