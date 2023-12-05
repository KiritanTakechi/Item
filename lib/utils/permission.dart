import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionController extends GetxController {
  /// 请求权限
  Future<Map<Permission, PermissionStatus>> requestPermissions() async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.camera,
      Permission.photos,
      Permission.storage,
    ].request();
    return statuses;
  }
}

class SettingsController extends GetxController {
  /// 打开应用设置页面
  Future<bool> navigateToAppSettings() async {
    bool opened = await openAppSettings();
    return opened;
  }
}

class PermissionStatusController extends GetxController {
  /// 检查相机权限状态
  Future<PermissionStatus> getCameraPermissionStatus() async {
    return await Permission.camera.status;
  }

  /// 检查相册权限状态
  Future<PermissionStatus> getPhotosPermissionStatus() async {
    return await Permission.photos.status;
  }

  /// 检查文件读写权限状态
  Future<PermissionStatus> getStoragePermissionStatus() async {
    return await Permission.storage.status;
  }
}
