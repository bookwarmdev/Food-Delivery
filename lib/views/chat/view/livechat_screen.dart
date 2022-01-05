import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NavigateBack(
                function: () {
                  Navigator.pop(context);
                },
                titel: 'Chat',
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(12, 26),
                      spreadRadius: 0,
                      color: AppColor.kblurColor.withOpacity(0.1),
                      blurRadius: 50.0,
                    )
                  ],
                  color: AppColor.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/Photo_Profile1.png'),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Anamwp',
                              style: AppTextStyle.kTextHeader3.copyWith(),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsetsDirectional.all(4.0),
                                  margin: const EdgeInsetsDirectional.only(
                                      end: 5.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
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
                            color: AppColor.kPrimaryLigth),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CallScreen(),
                              ),
                            );
                          },
                          icon: Image.asset('assets/icons/Call.png'),
                        )),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: TextChatCard(
                  text: Text(
                    'Just to order',
                    style: AppTextStyle.kTextHeader4.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                  color: [
                    AppColor.white,
                    AppColor.grey.withOpacity(0.3),
                  ],
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextChatCard(
                  text: Text(
                    'Okay, for what level of spiciness?',
                    style: AppTextStyle.kTextHeader4.copyWith(
                      color: AppColor.white,
                    ),
                  ),
                  color: const [
                    AppColor.kPrimaryTin,
                    AppColor.kPrimary,
                  ],
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: TextChatCard(
                  text: Text(
                    'Okay, wait a minute 👍',
                    style: AppTextStyle.kTextHeader4.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                  color: [
                    AppColor.white,
                    AppColor.grey.withOpacity(0.3),
                  ],
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextChatCard(
                  text: Text(
                    'Okay, wait a minute 👍',
                    style: AppTextStyle.kTextHeader4.copyWith(
                      color: AppColor.white,
                    ),
                  ),
                  color: const [
                    AppColor.kPrimaryTin,
                    AppColor.kPrimary,
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 0),
                    spreadRadius: 0,
                    color: AppColor.kblurColor.withOpacity(0.1),
                    blurRadius: 50.0,
                  )
                ],
                color: AppColor.white,
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Message',
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/icons/Send.png'),
                  ),
                  focusColor: AppColor.kSecondary,
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    borderSide: BorderSide(
                      color: AppColor.white,
                      width: 0.0,
                    ),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    borderSide: BorderSide(
                      color: AppColor.white,
                      width: 0.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
