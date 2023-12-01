import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'home_screen.dart';
import 'upload_screen.dart';
import 'settings_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const HomeScreen(),
    const UploadScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(0.1),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              color: Colors.grey[600]!,
              // 非激活按钮的颜色
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: '主页面',
                  backgroundColor: Colors.red, // 激活时的背景色
                  textColor: Colors.white, // 激活时的文本色
                ),
                GButton(
                  icon: Icons.camera_alt,
                  text: '上传',
                  backgroundColor: Colors.blue, // 激活时的背景色
                  textColor: Colors.white, // 激活时的文本色
                ),
                GButton(
                  icon: Icons.settings,
                  text: '设置',
                  backgroundColor: Colors.green, // 激活时的背景色
                  textColor: Colors.white, // 激活时的文本色
                ),
              ],
              selectedIndex: _currentIndex,
              onTabChange: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
