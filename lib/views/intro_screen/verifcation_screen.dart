import 'package:demo_application/consts/strings.dart';
import 'package:demo_application/consts/utils.dart';
import 'package:demo_application/views/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/colors.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: letswhisper.text.black.fontFamily(bold).make(),
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Vx.gray600,
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Vx.gray600,
                        )),
                    prefixIcon: const Icon(
                      Icons.phone_android_rounded,
                      color: Vx.gray700,
                    ),
                    labelText: "Phone Number",
                    prefixText: "+91",
                    labelStyle: const TextStyle(
                      color: Vx.gray400,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              20.heightBox,
              otp.text.make(),
              const Spacer(),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: context.screenWidth - 80,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: bgColor,
                          shape: const StadiumBorder(),
                          padding: const EdgeInsets.all(16)),
                      onPressed: () {
                        Get.to(() => const HomeScreen(),
                            transition: Transition.downToUp);
                      },
                      child: co.text.semiBold.size(16).make()),
                ),
              ),
              10.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}
