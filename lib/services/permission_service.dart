import 'package:BooruPocket/services/locator_service.dart';
import 'package:BooruPocket/services/notification_service.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionService {
  Future<bool> hasNotificationPermission() async {
    final awesomeNotifications =
        locator<NotificationService>().awesomeNotifications;
    final permissionStatus = await awesomeNotifications.isNotificationAllowed();
    if (permissionStatus) {
      return true;
    } else {
      return await awesomeNotifications.requestPermissionToSendNotifications();
    }
  }

  // ignore: unused_element
  Future<bool> _requestPermission(Permission permission) async {
    final status = await permission.status;
    if (status.isGranted) {
      return true;
    } else {
      final result = await permission.request();
      if (result.isGranted) {
        return true;
      } else {
        return false;
      }
    }
  }

  static Future<PermissionService> init() async {
    final permissionService = PermissionService();
    // Permissions that are required to be checked on app start
    await permissionService.hasNotificationPermission();

    return permissionService;
  }
}
