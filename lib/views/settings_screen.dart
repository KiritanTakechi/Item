import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final languages = [
      {'code': 'en', 'country': 'US', 'name': 'English'},
      {'code': 'zh', 'country': 'CN', 'name': '简体中文'},
    ];

    Locale currentLocale = Get.locale!;
    String languageCode = currentLocale.languageCode;
    String countryCode = currentLocale.countryCode ?? '';

    return Scaffold(
      appBar: AppBar(
        title: Text('settings'.tr),
        backgroundColor: Colors.white,
        elevation: 0,
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 20),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'select_language'.tr, // 提示文本
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            DropdownButton<String>(
              value: '$languageCode-$countryCode',
              isExpanded: true,
              items: languages.map<DropdownMenuItem<String>>((language) {
                return DropdownMenuItem<String>(
                  value: '${language['code']}-${language['country']}',
                  child: Text(language['name'] as String),
                );
              }).toList(),
              onChanged: (String? newValue) {
                if (newValue != null) {
                  final newLocale = newValue.split('-');
                  Get.updateLocale(Locale(newLocale[0], newLocale[1]));
                }
              },
              borderRadius: BorderRadius.circular(15),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
