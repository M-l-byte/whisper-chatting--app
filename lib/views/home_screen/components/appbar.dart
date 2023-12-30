import 'package:demo_application/consts/colors.dart';
import 'package:demo_application/consts/images.dart';
import 'package:demo_application/consts/strings.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../consts/utils.dart';

Widget appbar(GlobalKey<ScaffoldState> key) {
  return Container(
      padding: const EdgeInsets.only(right: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              key.currentState!.openDrawer();
            },
            child: Container(
              decoration: const BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(100),
                      bottomRight: Radius.circular(100))),
              height: 80,
              width: 90,
              child: const Icon(
                settingsIcon,
                color: Colors.white,
              ),
            ),
          ),
          RichText(
              text: const TextSpan(children: [
            TextSpan(
              text: "$appname\n",
              style: TextStyle(
                  fontFamily: bold, fontSize: 22, color: Colors.black),
            ),
            TextSpan(
              text: "                $whis",
              style:
                  TextStyle(fontFamily: light, fontSize: 15, color: Vx.gray700),
            )
          ])),
          CircleAvatar(
            backgroundColor: bgColor,
            radius: 25,
            child: Image.asset(
              ic_user,
              color: Colors.white,
            ),
          )
        ],
      ));
}
