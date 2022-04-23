import 'package:flutter/material.dart';
import 'package:food_delivery/utils/ui.dart';
import 'package:food_delivery/utils/widget/navigator.dart';
import 'package:food_delivery/views/chat/view/call_screen.dart';
import 'package:food_delivery/views/chat/widgets/text_chat_card.dart';

class LiveChatScreen extends StatefulWidget {
  const LiveChatScreen({Key? key}) : super(key: key);

  @override
  _LiveChatScreenState createState() => _LiveChatScreenState();
}

class _LiveChatScreenState extends State<LiveChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NavigateBack(
                    function: () {
                      Navigator.pop(context);
                    },
                    titel: 'Chat',
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: MediaQuery.of(context).platformBrightness ==
                              Brightness.light
                          ? [
                              BoxShadow(
                                offset: const Offset(12, 26),
                                spreadRadius: 0,
                                color: AppColor.kblurColor.withOpacity(0.1),
                                blurRadius: 50.0,
                              )
                            ]
                          : AppColor.appContanerShadowDark,
                      color: MediaQuery.of(context).platformBrightness ==
                              Brightness.light
                          ? AppColor.white
                          : AppColor.grey.withOpacity(0.2),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/Photo_Profile1.png',
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Anamwp',
                                  style: AppTextStyle.kTextHeader3.copyWith(
                                    color: MediaQuery.of(context)
                                                .platformBrightness ==
                                            Brightness.light
                                        ? AppColor.black
                                        : AppColor.white,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding:
                                          const EdgeInsetsDirectional.all(4.0),
                                      margin: const EdgeInsetsDirectional.only(
                                          end: 5.0),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        color: AppColor.kPrimary,
                                      ),
                                    ),
                                    Text(
                                      'Online',
                                      style: AppTextStyle.kTextHeader4.copyWith(
                                        color: AppColor.grey,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: MediaQuery.of(context).platformBrightness ==
                                    Brightness.light
                                ? AppColor.kPrimaryLigth
                                : AppColor.white.withOpacity(0.2),
                          ),
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const CallScreen(),
                                ),
                              );
                            },
                            icon: Image.asset(
                              'assets/icons/Call.png',
                              color:
                                  MediaQuery.of(context).platformBrightness ==
                                          Brightness.light
                                      ? null
                                      : AppColor.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        children: const [
                          SendChatCard(content: 'Just to order'),
                          RecivecChatCard(
                              content: 'Okay, for what level of spiciness?'),
                          SendChatCard(content: 'Okay, wait a minute 👍'),
                          RecivecChatCard(content: 'Okay, wait a minute 👍'),
                          SendChatCard(content: 'Just to order'),
                          RecivecChatCard(
                              content: 'Okay, for what level of spiciness?'),
                          SendChatCard(content: 'Okay, wait a minute 👍'),
                          RecivecChatCard(content: 'Okay, wait a minute 👍'),
                          SendChatCard(content: 'Just to order'),
                          RecivecChatCard(
                              content: 'Okay, for what level of spiciness?'),
                          SendChatCard(content: 'Okay, wait a minute 👍'),
                          RecivecChatCard(content: 'Okay, wait a minute 👍'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: MediaQuery.of(context).platformBrightness ==
                            Brightness.light
                        ? AppColor.appContanerShadow
                        : AppColor.appContanerShadowDark,
                    color: MediaQuery.of(context).platformBrightness ==
                            Brightness.light
                        ? AppColor.white
                        : AppColor.grey.withOpacity(0.2),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Message',
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/icons/Send.png'),
                      ),
                      focusColor: AppColor.kSecondary,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                        borderSide: BorderSide(
                          color: MediaQuery.of(context).platformBrightness ==
                                  Brightness.light
                              ? AppColor.white
                              : Colors.transparent,
                          width: 0.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                        borderSide: BorderSide(
                          color: MediaQuery.of(context).platformBrightness ==
                                  Brightness.light
                              ? AppColor.white
                              : Colors.transparent,
                          width: 0.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RecivecChatCard extends StatelessWidget {
  const RecivecChatCard({Key? key, required this.content}) : super(key: key);
  final String content;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextChatCard(
        text: Text(
          content,
          style: AppTextStyle.kTextHeader4.copyWith(
            color: AppColor.white,
          ),
        ),
        color: const [
          AppColor.kPrimaryTin,
          AppColor.kPrimary,
        ],
      ),
    );
  }
}

class SendChatCard extends StatelessWidget {
  const SendChatCard({
    Key? key,
    required this.content,
  }) : super(key: key);

  final String content;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: TextChatCard(
        text: Text(
          content,
          style: AppTextStyle.kTextHeader4.copyWith(
            color: MediaQuery.of(context).platformBrightness == Brightness.light
                ? AppColor.black
                : AppColor.white,
          ),
        ),
        color: MediaQuery.of(context).platformBrightness == Brightness.light
            ? [
                AppColor.white,
                AppColor.grey.withOpacity(0.3),
              ]
            : [
                AppColor.grey.withOpacity(0.4),
                AppColor.grey.withOpacity(0.4),
              ],
      ),
    );
  }
}
