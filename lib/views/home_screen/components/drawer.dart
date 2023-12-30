import 'package:demo_application/consts/consts.dart';
import 'package:demo_application/views/profile_screen/profile_screen.dart';
import 'package:get/get.dart';

Widget drawer() {
  return Drawer(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.horizontal(right: Radius.circular(25)),
    ),
    child: Expanded(
      child: Column(
        children: [
          ListTile(
            leading: const Icon(
              backIcon,
              color: Colors.black,
            ).onTap(() {
              Get.back();
            }),
            title: settings.text.fontFamily(bold).black.make(),
          ),
          20.heightBox,
          CircleAvatar(
            radius: 45,
            backgroundColor: btnColor,
            child: Image.asset(
              ic_user,
              color: Colors.white,
            ),
          ),
          10.heightBox,
          "UserName".text.black.fontFamily(bold).make(),
          20.heightBox,
          const Divider(color: Colors.deepOrange, height: 1),
          30.heightBox,
          ListView(
            shrinkWrap: true,
            children: List.generate(
              draweIconsList.length,
              (index) => ListTile(
                onTap: () {
                  switch (index) {
                    case 0:
                      Get.to(() => const ProfileScreen(),
                          transition: Transition.downToUp);
                  }
                },
                leading: Icon(
                  draweIconsList[index],
                  color: Colors.black,
                ),
                title: draweIconsTitle[index].text.fontFamily(bold).make(),
              ),
            ),
          ),
          10.heightBox,
          const Divider(color: Colors.deepOrange, height: 1),
          10.heightBox,
          ListTile(
            leading: const Icon(
              inviteIcon,
              color: Colors.black,
            ),
            title: invite.text.fontFamily(bold).black.make(),
          ),
          const Spacer(),
          ListTile(
            leading: const Icon(
              logoutIcon,
              color: Colors.black,
            ),
            title: logout.text.fontFamily(bold).make(),
          )
        ],
      ),
    ),
  );
}
