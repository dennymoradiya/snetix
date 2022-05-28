import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shope/p1.dart';
import 'package:shope/view/splechScreen/splech.dart';
import 'api/api.dart';
import 'globle/Globle.dart';
import 'module/allproductmodule.dart';

RxBool dataget = false.obs;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'sahil',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "poppins",
        primarySwatch: Colors.blue,
      ),
      home: Splec(),
    );
  }
}

void getdatas() async {
  FutureBuilder<AllProduct>(
    future: getAllproduct(),
    builder: (c, _) {
      if (_.connectionState == ConnectionState.waiting) {
        dataget.value = false;
        return CircularProgressIndicator();
      }
      if (_.hasError) {
        dataget.value = false;
      }
      if (_.hasData) {
        dataget.value = true;
      }
      dataget.value = true;
      return Text('data');
    },
  );
}

class HomeP extends StatefulWidget {
  const HomeP({Key? key}) : super(key: key);

  @override
  _HomePState createState() => _HomePState();
}

class _HomePState extends State<HomeP> {
  void permission() async {
    await Permission.manageExternalStorage.request();
    var permissi = await Permission.storage.request();
    if (permissi.isGranted) {
      Directory appDocDir = await getApplicationDocumentsDirectory();
      String appDocPath = appDocDir.path;
      Hive.init(appDocPath);
      box = await Hive.openBox('shope');
    }
  }

  @override
  void initState() {
    permission();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            Navigator.of(context).push(MaterialPageRoute(builder: (a) => P1()));
          },
          child: Text('btn'),
        ),
      ),
    );
  }
}
