import 'package:flutter/material.dart';
import 'package:learn_push_notification/app.dart';
import 'package:learn_push_notification/firebase_options.dart';
import 'package:learn_push_notification/services/fcm_services.dart';
import 'package:learn_push_notification/services/notification_services.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await NotificationServices.settings();
  await  FCMServices.init();
  runApp(const LearnNotification());
}
