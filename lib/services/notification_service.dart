import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

class NotificationService {
  late final String donwloadChannelKey;
  NotificationService() {
    donwloadChannelKey = 'download_channeltest3';
    AwesomeNotifications().initialize(
      null,
      [
        NotificationChannel(
          importance: NotificationImportance.Default,
          channelGroupKey: '$donwloadChannelKey-group',
          channelKey: donwloadChannelKey,
          channelName: 'Download Channel',
          channelDescription: 'Notification channel for basic tests',
          defaultColor: const Color(0xFF6C3FC7),
          ledColor: Colors.white,
          criticalAlerts: true,
        )
      ],
      channelGroups: [
        NotificationChannelGroup(
          channelGroupkey: '$donwloadChannelKey-group',
          channelGroupName: 'Download Channel Group',
        )
      ],
    );

    AwesomeNotifications()
        .actionStream
        .listen((ReceivedNotification receivedNotification) {
      // ignore: avoid_print
      print(receivedNotification);
    });
  }

  Future<bool> showProgressDownloadNotify(int id) async {
    return await AwesomeNotifications().createNotification(
        content: NotificationContent(
      id: id,
      channelKey: donwloadChannelKey,
      category: NotificationCategory.Recommendation,
      title: 'Downloading Post $id',
      notificationLayout: NotificationLayout.ProgressBar,
      color: const Color(0xFF6C3FC7),
      backgroundColor: const Color(0xFF6C3FC7),
      groupKey: '$donwloadChannelKey-group',
    ));
  }

  Future<bool> showDownloadCompletedNotify(int id, String? imageurl) async {
    return await AwesomeNotifications().createNotification(
        content: NotificationContent(
      id: id,
      channelKey: donwloadChannelKey,
      category: NotificationCategory.Recommendation,
      title: 'Post $id Downloaded',
      bigPicture: imageurl,
      notificationLayout: NotificationLayout.BigPicture,
      color: const Color(0xFF6C3FC7),
      backgroundColor: const Color(0xFF6C3FC7),
      groupKey: '$donwloadChannelKey-group',
    ));
  }
}
