import 'package:demo_application/consts/consts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: profile.text.fontFamily(bold).make(),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: btnColor,
              child: Stack(
                children: [
                  Image.asset(
                    ic_user,
                    color: Colors.white,
                  ),
                  const Positioned(
                    right: 0,
                    bottom: 18,
                    child: CircleAvatar(
                      backgroundColor: btnColor,
                      radius: 16,
                      child: Icon(
                        Icons.camera_alt_rounded,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: TextFormField(
                cursorColor: Colors.white,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: const Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                    label: "Text".text.white.semiBold.make(),
                    labelStyle: const TextStyle(
                      fontFamily: bold,
                    )),
              ),
              subtitle: subt.text.gray400.make(),
            ),
            const Divider(
              color: btnColor,
              height: 1,
            ),
            ListTile(
              leading: const Icon(
                Icons.info,
                color: Colors.white,
              ),
              title: TextFormField(
                cursorColor: Colors.white,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: const Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                    label: "About".text.white.semiBold.make(),
                    labelStyle: const TextStyle(
                      fontFamily: bold,
                    )),
              ),
            ),
            const Divider(
              color: btnColor,
              height: 1,
            ),
            ListTile(
              leading: const Icon(
                Icons.phone,
                color: Colors.white,
              ),
              title: TextFormField(
                cursorColor: Colors.white,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: const Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                    label: "Phone".text.white.semiBold.make(),
                    labelStyle: const TextStyle(
                      fontFamily: bold,
                    )),
              ),
            ),
            const Divider(
              color: btnColor,
              height: 1,
            ),
          ],
        ),
      ),
    );
  }
}
