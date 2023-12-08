import 'package:get/get_navigation/src/routes/get_route.dart';

import '../views/bottom_nav_bar.dart';
import '../views/info_screen.dart';
import '../views/load_screen.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: '/',
      page: () => const PermissionCheckPage(),
    ),
    GetPage(
      name: '/home',
      page: () => const BottomNavBar(),
    ),
    GetPage(
      name: '/info',
      page: () => InfoScreen(),
    ),
  ];
}