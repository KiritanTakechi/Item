import 'dart:async';
import 'dart:io';

import 'package:device_info/device_info.dart';
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

/*
class PermissionStatusController extends GetxController {
  /// 检查相机权限状态
  Future<PermissionStatus>? getCameraPermissionStatus() async {
    return await Permission.camera.status;
  }

  /// 检查相册权限状态
  Future<PermissionStatus>? getPhotosPermissionStatus() async {
    return await Permission.photos.status;
  }

  /// 检查文件读写权限状态
  Future<PermissionStatus>? getStoragePermissionStatus() async {
    return await Permission.storage.status;
  }
}
*/

class PermissionHandlerController extends GetxController {
  var cameraPermission = Rx<PermissionStatus>(PermissionStatus.denied);
  var photosPermission = Rx<PermissionStatus>(PermissionStatus.denied);
  var storagePermission = Rx<PermissionStatus>(PermissionStatus.denied);

  Future<void> requestAllPermissions() async {
    var statuses = await [
      Permission.camera,
      Permission.photos,
      Permission.storage,
    ].request();

    /// 更新权限状态
    cameraPermission.value =
        statuses[Permission.camera] ?? PermissionStatus.denied;
    photosPermission.value =
        statuses[Permission.photos] ?? PermissionStatus.denied;
    storagePermission.value =
        statuses[Permission.storage] ?? PermissionStatus.denied;
  }

  Future<void> checkAllPermissions() async {
    cameraPermission.value = await Permission.camera.status;
    photosPermission.value = await Permission.photos.status;
    storagePermission.value = await Permission.storage.status;
  }

  Future<bool> get allPermissionsGranted async {
    var statuses = await Future.wait([
      Permission.camera.status,
      Permission.photos.status,
      Permission.storage.status,
    ]);
    return statuses.every((status) => status.isGranted);
  }

  Future<void> requestCameraPermission() async {
    cameraPermission.value = await Permission.camera.request();
  }

  // 请求照片权限
  Future<void> requestPhotosPermission() async {
    if (Platform.isAndroid) {
      print("Platform.isAndroid");
      final androidInfo = await DeviceInfoPlugin().androidInfo;
      if (androidInfo.version.sdkInt <= 32) {
        // 对于 SDK 32 及以下版本，请求存储权限
        photosPermission.value = await Permission.storage.request();
      } else {
        // 对于 SDK 33 及以上版本，请求照片权限
        photosPermission.value = await Permission.photos.request();
      }
    } else {
      photosPermission.value = await Permission.photos.request();
    }
  }

  // 请求存储权限
  Future<void> requestStoragePermission() async {
    if (Platform.isAndroid) {
      print("Platform.isAndroid");
      final androidInfo = await DeviceInfoPlugin().androidInfo;
      if (androidInfo.version.sdkInt <= 32) {
        // 对于 SDK 32 及以下版本，请求存储权限
        storagePermission.value = await Permission.storage.request();
      } else {
        // 对于 SDK 33 及以上版本，请求照片权限
        storagePermission.value = await Permission.photos.request();
      }
    } else {
      storagePermission.value = await Permission.storage.request();
    }
  }
}
