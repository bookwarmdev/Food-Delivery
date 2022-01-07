import 'package:flutter/material.dart'; 
import 'package:food_delivery/utils/ui.dart';
import 'package:food_delivery/utils/widget/background.dart'; 
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
          const SizedBox(height: 20.0,),
           Text('Chat', style: AppTextStyle.kTextHeader2.copyWith(
            fontWeight: FontWeight.bold,
          ),),
          const SizedBox(height: 20.0,),
            ChatCard(imagePath: 'assets/images/Photo_Profile1.png', name: 'Anamwp', onTap: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => const LiveChatScreen(),),);
            },),
          const SizedBox(height: 20.0,),
            ChatCard(imagePath: 'assets/images/Photo_Profile2.png', name: 'Guy Hawkins',),
          const SizedBox(height: 20.0,),
            ChatCard(imagePath: 'assets/images/Photo_Profile3.png', name: 'Leslie Alexander',),
        ],
      ),
    );
  }
}

class ChatCard extends StatelessWidget {
    String imagePath;
    String name;
    VoidCallback? onTap;
    ChatCard({
    Key? key,
    required this.imagePath,
    required this.name,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
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
                Image.asset(imagePath),
                const SizedBox(width: 10.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: AppTextStyle.kTextHeader3.copyWith(),),
                const SizedBox(height: 5.0,),
                Text('Your Order Just Arrived!', style: AppTextStyle.kTextHeader4.copyWith(
              color: AppColor.grey,
              fontSize: 14.0,
            ),),
              ],
            ),
              ],
            ),
            Text('20:00', style: AppTextStyle.kTextHeader4.copyWith(
              color: AppColor.grey,
              fontSize: 14.0,
            ),),
          ],
        ),
      ),
    );
  }
}
