import 'package:demo_application/views/home_screen/components/chats.dart';
import 'package:demo_application/views/home_screen/components/status.dart';
import 'package:flutter/material.dart';

Widget tabbarview() {
  return Expanded(
    child: Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12))),
      child: TabBarView(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12)),
            ),
            child: chats(),
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12)),
              color: Colors.white,
            ),
            child: statusComponent(),
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12)),
              color: Colors.amber,
            ),
          ),
        ],
      ),
    ),
  );
}
