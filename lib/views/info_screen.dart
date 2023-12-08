import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

import '../utils/permission.dart';

class InfoScreen extends StatelessWidget {
  InfoScreen({super.key});

  // 使用 Get.find() 获取 PermissionHandlerController
  final PermissionHandlerController permissionHandlerController = Get.find<PermissionHandlerController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Permissions Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 使用 Obx() 来监听和响应权限状态的变化
            Obx(() => Text("Camera Permission: ${permissionHandlerController.cameraPermission.value.isGranted ? "Granted" : "Denied"}")),
            Obx(() => Text("Photos Permission: ${permissionHandlerController.photosPermission.value.isGranted ? "Granted" : "Denied"}")),
            Obx(() => Text("Storage Permission: ${permissionHandlerController.storagePermission.value.isGranted ? "Granted" : "Denied"}")),
            const SizedBox(height: 20),
            // 按钮的可用性也是根据权限状态的变化而变化
            Obx(() {
              bool allPermissionsGranted = permissionHandlerController.cameraPermission.value.isGranted &&
                  permissionHandlerController.photosPermission.value.isGranted &&
                  permissionHandlerController.storagePermission.value.isGranted;

              return ElevatedButton(
                onPressed: allPermissionsGranted ? () => Get.toNamed('/home') : null,
                child: Text("Proceed to Home"),
              );
            }),
          ],
        ),
      ),
    );
  }
}
