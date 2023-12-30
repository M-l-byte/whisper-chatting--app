import 'package:demo_application/consts/colors.dart';
import 'package:demo_application/views/home_screen/components/tabbar.dart';
import 'package:demo_application/views/home_screen/components/tabbarview.dart';
import 'package:flutter/material.dart';

import 'components/appbar.dart';
import 'components/drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          key: scaffoldKey,
          drawer: drawer(),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {},
            child: const Icon(
              Icons.add,
              color: bgColor,
            ),
          ),
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Container(
              child: Column(
                children: [
                  appbar(scaffoldKey),
                  Expanded(
                    child: Row(
                      children: [
                        tabbar(),
                        tabbarview(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
