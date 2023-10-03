import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

sealed class NotificationServices {
  /// main object
  static final flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();

  /// Android setting for Android version 13 and higher

  static Future<bool?> getPermission() async {
    return await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>()
        ?.requestPermission();
  }

  static Future<void> settings() async {
    details;

    /// Android
    const initializationSettingsAndroid = AndroidInitializationSettings(
        "@mipmap/ic_launcher");

    /// => mana shuni q'yish kerak bu android papkasida bo'ladi
    /// ya'ni android/app/src/main/AndroidManifest.xml => @mipmap/ic_launcher
    ///
    final DarwinInitializationSettings initializationSettingsDarwin =
    DarwinInitializationSettings(onDidReceiveLocalNotification: (int id, String? title, String? body, String? payload) async {});

    /// linux
    const initializationSettingsLinux = LinuxInitializationSettings(defaultActionName: 'Open notification');


    final initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
    iOS: initializationSettingsDarwin,
    macOS: initializationSettingsDarwin,
    linux: initializationSettingsLinux);

    await flutterLocalNotificationsPlugin.initialize(initializationSettings,onDidReceiveNotificationResponse:onDidReceiveNotificationResponse);


  }

  static NotificationDetails get details {
     const AndroidNotificationDetails androidNotificationDetails =
    AndroidNotificationDetails('your channel id', 'your channel name',
        channelDescription: 'your channel description',
        importance: Importance.max,
        priority: Priority.high,
        playSound: true,
        ticker: 'ticker');
    const DarwinNotificationDetails darwinNotificationDetails =
    DarwinNotificationDetails();
    const NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
      iOS: darwinNotificationDetails,
      macOS: darwinNotificationDetails,
    );

    return notificationDetails;
  }

  static void onDidReceiveNotificationResponse(NotificationResponse response) {
    debugPrint("Read Notification: ${response.payload}");

    /// TODO:: buni keyin davom ettiramiz
  }


  static Future<void> sendNotification(String title, String body) async {
    await flutterLocalNotificationsPlugin.show(
        0, title, body, details);
    // flutterLocalNotificationsPlugin.periodicallyShow(id, title, body, repeatInterval, notificationDetails)
  }
}
