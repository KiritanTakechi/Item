import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

import '../utils/permission.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  PermissionHandlerController permissionHandlerController =
      Get.find<PermissionHandlerController>();

  @override
  void initState() {
    super.initState();
    permissionHandlerController.checkAllPermissions();
  }

  Widget permissionStatus(String permissionType, Rx<PermissionStatus> status,
      VoidCallback onRequest) {
    return ListTile(
      title: Text(permissionType),
      trailing: Row(
        mainAxisSize: MainAxisSize.min, // 保证 Row 的大小仅包裹其内容
        children: <Widget>[
          Obx(() => status.value.isGranted
              ? const Icon(Icons.check_circle, color: Colors.green)
              : const Icon(Icons.cancel, color: Colors.red)),
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: onRequest,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("permissions_screen".tr,
            style: const TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            permissionStatus(
              "camera_permission".tr,
              permissionHandlerController.cameraPermission,
              () => permissionHandlerController.requestCameraPermission(),
            ),
            const Divider(),
            permissionStatus(
              "photos_permission".tr,
              permissionHandlerController.photosPermission,
              () => permissionHandlerController.requestPhotosPermission(),
            ),
            const Divider(),
            permissionStatus(
              "storage_permission".tr,
              permissionHandlerController.storagePermission,
              () => permissionHandlerController.requestStoragePermission(),
            ),
            const SizedBox(height: 20),
            Obx(() {
              bool allPermissionsGranted = permissionHandlerController
                      .cameraPermission.value.isGranted &&
                  permissionHandlerController
                      .photosPermission.value.isGranted &&
                  permissionHandlerController.storagePermission.value.isGranted;

              return ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor:
                      allPermissionsGranted ? Colors.blue : Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed:
                    allPermissionsGranted ? () => Get.toNamed('/home') : null,
                child: Text(
                  "proceed2home".tr,
                  style: TextStyle(
                    color: allPermissionsGranted
                        ? Colors.white
                        : null, // 当按钮启用时，设置文本颜色为白色
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
