import 'dart:async';
import 'dart:io';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shope/globle/Globle.dart';
import 'package:shope/main.dart';
import 'package:shope/view/BottomBar/Bottomnavbar.dart';
import 'OnBordingScreen/onbordingScreen.dart';

class Splec extends StatefulWidget {
  @override
  _SplecState createState() => _SplecState();
}

class _SplecState extends State<Splec> {
  void permission() async {
    await Permission.manageExternalStorage.request();
    await Permission.storage.request();
    var permiss = await Permission.storage.status.isGranted;
    if (permiss) {
      Directory appDocDir = await getApplicationDocumentsDirectory();
      String appDocPath = appDocDir.path;
      Hive.init(appDocPath);
      box = await Hive.openBox('shope');
      Timer(Duration(seconds: 3), () {
        checkFirestScren();
      });
    } else {
      print('Permiision nont givien........');
    }
    box = await Hive.openBox('shope');
    getdatas();
    setState(() {});
  }

  checkFirestScren() async {
    firstTime
        ? Get.off(() => BottomNavbar())
        : Get.off(() => OnbordingScreen());
  }

  // Future<void> initPlatformState() async {
  //   await OneSignal.shared.setAppId("ac510fb4-5641-426a-b80e-2331bda91733");
  //   OneSignal.shared.setNotificationWillShowInForegroundHandler((event) {
  //     event.complete(event.notification);
  //   });
  //   OneSignal.shared.setNotificationOpenedHandler((openedResult) {});
  // }

  @override
  void initState() {
    // initPlatformState();
    permission();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/logo1.png"),
          )),
        ),
      ),
    );
  }
}
