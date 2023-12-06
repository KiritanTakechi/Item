import 'package:flutter_test/flutter_test.dart';
import 'package:permission_handler/permission_handler.dart';

class MockPermissionHandler extends Fake implements Permission {
  Future<PermissionStatus> get status async => PermissionStatus.granted;

  Future<PermissionStatus> request() async => PermissionStatus.granted;
}

void main() {

}