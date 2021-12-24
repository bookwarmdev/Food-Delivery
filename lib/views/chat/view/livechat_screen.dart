import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/ui.dart';
import 'package:food_delivery/utils/widget/background.dart';
import 'package:food_delivery/utils/widget/navigator.dart';
import 'package:food_delivery/views/chat/view/call_screen.dart';

class LiveChatScreen extends StatefulWidget {
  const LiveChatScreen({Key? key}) : super(key: key);

  @override
  _LiveChatScreenState createState() => _LiveChatScreenState();
}

class _LiveChatScreenState extends State<LiveChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Background(
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
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColor.kPrimaryLigth
                  ), 
                  child: IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const CallScreen(),),);
                  }, icon: Image.asset('assets/icons/Call.png'),)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
