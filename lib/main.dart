import 'package:demo_application/consts/colors.dart';
import 'package:demo_application/consts/images.dart';
import 'package:demo_application/consts/strings.dart';
import 'package:demo_application/views/intro_screen/verifcation_screen.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import 'consts/utils.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: Colors.white, statusBarIconBrightness: Brightness.dark),
  );
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: "lato"),
      debugShowCheckedModeBanner: false,
      home: const ChatApp(),
      title: appname,
    );
  }
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      logo,
                      width: 120,
                    ),
                    appname.text.size(28).fontFamily(bold).make(),
                  ]),
            ),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    spacing: 8.0,
                    runSpacing: 10,
                    children: List.generate(listOfFeatures.length, (index) {
                      return Chip(
                          labelPadding:
                              const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                          backgroundColor: Colors.transparent,
                          side: const BorderSide(color: Vx.gray500),
                          label: listOfFeatures[index].text.make());
                    }),
                  ),
                  20.heightBox,
                  slogan.text.size(35).fontFamily(bold).letterSpacing(2).make()
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  SizedBox(
                    width: context.screenWidth - 80,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: bgColor,
                            shape: const StadiumBorder(),
                            padding: const EdgeInsets.all(16)),
                        onPressed: () {
                          Get.to(() => const VerificationScreen(),
                              transition: Transition.downToUp);
                        },
                        child: cont.text.semiBold.size(16).make()),
                  ),
                  10.heightBox,
                  poweredby.text.size(15).make(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
