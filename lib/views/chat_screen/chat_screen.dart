import 'package:demo_application/consts/consts.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0.0,
        actions: const [
          Icon(
            Icons.more_vert_rounded,
            color: Colors.white,
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  children: [
                    Expanded(
                      child: RichText(
                          text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "Username\n",
                            style: TextStyle(
                              fontFamily: bold,
                              fontSize: 16,
                              color: Color.fromARGB(255, 89, 113, 125),
                            ),
                          ),
                          TextSpan(
                            text: "Last seen",
                            style: TextStyle(
                              fontFamily: bold,
                              fontSize: 10,
                              color: Color.fromARGB(255, 89, 113, 125),
                            ),
                          ),
                        ],
                      )),
                    ),
                    const CircleAvatar(
                      backgroundColor: btnColor,
                      child: Icon(
                        Icons.video_call_outlined,
                        color: Colors.white,
                      ),
                    ),
                    10.widthBox,
                    const CircleAvatar(
                      backgroundColor: btnColor,
                      child: Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              20.heightBox,
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 20,
                itemBuilder: (BuildContext, int index) {
                  return Directionality(
                    textDirection:
                        index.isEven ? TextDirection.rtl : TextDirection.ltr,
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: index.isEven ? btnColor : txtcolor,
                            child: Image.asset(
                              ic_user,
                              color: Colors.white,
                            ),
                          ),
                          10.widthBox,
                          Expanded(
                            child: Directionality(
                              textDirection: TextDirection.ltr,
                              child: Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: index.isEven ? btnColor : txtcolor,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: "Hello,this is a dummy text for you!!"
                                    .text
                                    .white
                                    .semiBold
                                    .make(),
                              ),
                            ),
                          ),
                          10.widthBox,
                          Directionality(
                              textDirection: TextDirection.ltr,
                              child: "11:00 AM".text.color(greyclr).make()),
                        ],
                      ),
                    ),
                  );
                },
              ),
              10.heightBox,
              SizedBox(
                height: 56,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 4, vertical: 4),
                        decoration: BoxDecoration(
                          color: bgColor,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: TextFormField(
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white, fontFamily: bold),
                          decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.emoji_emotions_outlined,
                                color: Colors.white,
                              ),
                              suffixIcon: Icon(
                                Icons.attachment_rounded,
                                color: Colors.white,
                              ),
                              border: InputBorder.none,
                              hintText: "Type your message...",
                              hintStyle:
                                  TextStyle(color: Colors.white, fontSize: 14)),
                        ),
                      ),
                    ),
                    10.widthBox,
                    const CircleAvatar(
                      backgroundColor: btnColor,
                      child: Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
