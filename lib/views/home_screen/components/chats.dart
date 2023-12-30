import 'package:demo_application/consts/colors.dart';
import 'package:demo_application/consts/images.dart';
import 'package:demo_application/views/chat_screen/chat.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

Widget chats() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 8),
    child: ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            onTap: () {
              Get.to(() => const ChatScreen(), transition: Transition.downToUp);
            },
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: bgColor,
              child: Image.asset(
                ic_user,
                color: Colors.white,
              ),
            ),
            title: "Dummy's".text.make(),
            subtitle: "Message here".text.make(),
            trailing: Directionality(
              textDirection: TextDirection.rtl,
              child: TextButton.icon(
                onPressed: null,
                icon: const Icon(
                  Icons.access_time_filled_rounded,
                  size: 16,
                  color: Vx.gray400,
                ),
                label: "last seen".text.gray400.make(),
              ),
            ),
          ),
        );
      },
    ),
  );
}
