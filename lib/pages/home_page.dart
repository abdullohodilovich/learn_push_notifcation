import 'package:flutter/material.dart';
import 'package:learn_push_notification/services/notification_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    NotificationServices.getPermission();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            NotificationServices.sendNotification();
          },
          child: const Text("send notification"),
        ),
      ),
    );
  }
}
