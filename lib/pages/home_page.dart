import 'package:flutter/material.dart';
import 'package:learn_push_notification/services/notification_services.dart';
import 'package:lottie/lottie.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          // lottie,

          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(MediaQuery.sizeOf(context).width * 0.6,50)
              ),
              onPressed: () {
                NotificationServices.sendNotification("Flutter Notify",'new message...');
              },
              child:const Row(children: [
                Icon(
                  Icons.notification_add,
                  size: 30,
                ),
                SizedBox(width: 10,),
                Text("Send notification"),
              ],),
            ),
          ),
        ],
      ),
    );
  }
}

// final lottie = Lottie.asset("assets/lotties/animation_lna4zgil.json");
