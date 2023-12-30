import 'package:demo_application/consts/consts.dart';

Widget statusComponent() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: btnColor,
            child: Image.asset(
              ic_user,
              color: Colors.white,
            ),
          ),
          title: "My Status".text.semiBold.color(txtcolor).make(),
          subtitle: "Tap to add status".text.gray400.make(),
        ),
        20.heightBox,
        recentupdates.text.semiBold.gray400.make(),
        20.heightBox,
        ListView.builder(
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 8),
                child: ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.greenAccent,
                          width: 3,
                        )),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Vx.randomPrimaryColor,
                      child: Image.asset(
                        ic_user,
                      ),
                    ),
                  ),
                  title: "Username".text.semiBold.color(txtcolor).make(),
                  subtitle: "Today 4:37 PM".text.gray400.make(),
                ),
              );
            }),
      ],
    ),
  );
}
