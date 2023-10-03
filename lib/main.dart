import 'package:flutter/material.dart';
import 'package:learn_push_notification/app.dart';
import 'package:learn_push_notification/services/notification_services.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationServices.settings();
  runApp(const LearnNotification());
}