import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 定义支持的语言列表
    final languages = [
      {'code': 'en', 'country': 'US', 'name': 'English'},
      {'code': 'zh', 'country': 'CN', 'name': '简体中文'},
    ];

    // 获取当前语言和国家代码
    Locale currentLocale = Get.locale!;
    String languageCode = currentLocale.languageCode;
    String countryCode = currentLocale.countryCode ?? '';

    return Scaffold(
      appBar: AppBar(
        title:  Text('settings'.tr),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            DropdownButton<String>(
              // 设置当前选中的语言
              value: '$languageCode-$countryCode',
              // 生成下拉菜单项
              items: languages.map<DropdownMenuItem<String>>((language) {
                return DropdownMenuItem<String>(
                  value: '${language['code']}-${language['country']}',
                  child: Text(language['name'] as String),
                );
              }).toList(),
              // 当选中不同项时
              onChanged: (String? newValue) {
                if (newValue != null) {
                  final newLocale = newValue.split('-');
                  Get.updateLocale(Locale(newLocale[0], newLocale[1]));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
