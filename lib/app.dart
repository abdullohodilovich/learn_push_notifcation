import 'package:flutter/material.dart';
import 'package:learn_push_notification/pages/home_page.dart';

class LearnNotification extends StatelessWidget {
  const LearnNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      themeMode: ThemeMode.light,
      home: const HomePage(),
    );
  }
}
