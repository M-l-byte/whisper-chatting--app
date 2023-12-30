import "package:demo_application/consts/strings.dart";
import "package:flutter/material.dart";

Widget tabbar() {
  return Container(
    child: const RotatedBox(
      quarterTurns: 3,
      child: TabBar(tabs: [
        Tab(
          text: chats,
        ),
        Tab(
          text: status,
        ),
        Tab(
          text: camera,
        ),
      ]),
    ),
  );
}
