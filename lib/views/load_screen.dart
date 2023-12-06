import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

import '../utils/permission.dart';

class PermissionCheckPage extends StatefulWidget {
  const PermissionCheckPage({super.key});

  @override
  State<PermissionCheckPage> createState() => _PermissionCheckPageState();
}

class _PermissionCheckPageState extends State<PermissionCheckPage> {
  final PermissionStatusController permissionController = Get.put(PermissionStatusController());

  @override
  void initState() {
    super.initState();
    _checkPermissions();
  }

  Future<void> _checkPermissions() async {
    final status = await permissionController.getCameraPermissionStatus();

    if (status.isGranted) {
      // 如果相机权限被授权，导航到 home 页面
      Get.offNamed('/home'); // 假设 home 页面的路由是 '/home'
    } else {
      // 否则，导航到 info 页面
      Get.offNamed('/info'); // 假设 info 页面的路由是 '/info'
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(), // 显示一个加载指示器
      ),
    );
  }
}