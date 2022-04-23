import 'package:flutter/material.dart';
import 'package:food_delivery/utils/ui.dart';
import 'package:food_delivery/views/chat/view/livechat_screen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Text(
            'Chat',
            style: AppTextStyle.kTextHeader2.copyWith(
              fontWeight: FontWeight.bold,
              color:
                  MediaQuery.of(context).platformBrightness == Brightness.light
                      ? AppColor.black
                      : AppColor.white,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          ChatCard(
            imagePath: 'assets/images/Photo_Profile1.png',
            name: 'Anamwp',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LiveChatScreen(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 20.0,
          ),
          ChatCard(
            imagePath: 'assets/images/Photo_Profile2.png',
            name: 'Guy Hawkins',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LiveChatScreen(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 20.0,
          ),
          ChatCard(
            imagePath: 'assets/images/Photo_Profile3.png',
            name: 'Leslie Alexander',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LiveChatScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class ChatCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final VoidCallback? onTap;
  const ChatCard({
    Key? key,
    required this.imagePath,
    required this.name,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width < 600
              ? MediaQuery.of(context).size.width
              : MediaQuery.of(context).size.width / 1.1,
          padding: const EdgeInsets.symmetric(
            vertical: 5.0,
            horizontal: 10.0,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow:
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? [
                        BoxShadow(
                          offset: const Offset(12, 26),
                          spreadRadius: 0,
                          color: AppColor.kblurColor.withOpacity(0.1),
                          blurRadius: 50.0,
                        )
                      ]
                    : AppColor.appContanerShadowDark,
            color: MediaQuery.of(context).platformBrightness == Brightness.light
                ? AppColor.white
                : AppColor.dark.withOpacity(0.4),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(imagePath),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: AppTextStyle.kTextHeader3.copyWith(
                          color: MediaQuery.of(context).platformBrightness ==
                                  Brightness.light
                              ? AppColor.black
                              : AppColor.white,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Your Order Just Arrived!',
                        style: AppTextStyle.kTextHeader4.copyWith(
                          color: AppColor.grey,
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                '20:00',
                style: AppTextStyle.kTextHeader4.copyWith(
                  color: AppColor.grey,
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
