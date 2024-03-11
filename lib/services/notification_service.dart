import 'dart:async';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

class NotificationService {
  static String downloadChannelKey = 'download_channel';
  final AwesomeNotifications awesomeNotifications = AwesomeNotifications();

  Future<bool> showDownloadCompletedNotify(int id, String? imageUrl) async {
    return await awesomeNotifications.createNotification(
      content: NotificationContent(
        id: id,
        channelKey: downloadChannelKey,
        category: NotificationCategory.Recommendation,
        title: 'Post $id Downloaded',
        bigPicture: imageUrl,
        notificationLayout: NotificationLayout.BigPicture,
        color: const Color(0xFF6C3FC7),
        backgroundColor: const Color(0xFF6C3FC7),
        groupKey: '$downloadChannelKey-group',
      ),
    );
  }

  Future<bool> showProgressDownloadNotify(int id) async {
    return await awesomeNotifications.createNotification(
      content: NotificationContent(
        id: id,
        channelKey: downloadChannelKey,
        category: NotificationCategory.Recommendation,
        title: 'Downloading Post $id',
        notificationLayout: NotificationLayout.ProgressBar,
        color: const Color(0xFF6C3FC7),
        backgroundColor: const Color(0xFF6C3FC7),
        groupKey: '$downloadChannelKey-group',
      ),
    );
  }

  static Future<NotificationService> init() async {
    await AwesomeNotifications().initialize(
      null,
      [
        NotificationChannel(
          importance: NotificationImportance.Default,
          channelGroupKey: '$downloadChannelKey-group',
          channelKey: downloadChannelKey,
          channelName: 'Download Channel',
          channelDescription: 'Notification channel for basic tests',
          defaultColor: const Color(0xFF6C3FC7),
          ledColor: Colors.white,
          criticalAlerts: true,
        ),
      ],
      channelGroups: [
        NotificationChannelGroup(
          channelGroupKey: '$downloadChannelKey-group',
          channelGroupName: 'Download Channel Group',
        ),
      ],
    );

    return NotificationService();
  }
}
