import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/fonts.dart';
import 'package:food_delivery/utils/ui.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  bool muteMic = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(),
          Column(
            children: [
              Image.asset('assets/images/Photo_Profile4.png'),
              const SizedBox(height: 20.0,),
              Text('Courtney Henry', style: AppTextStyle.kTextHeader2.copyWith(
                fontWeight: FontWeight.bold,
              ),),
              const SizedBox(height: 10.0,),
              Text('Ringing . . .', style: AppTextStyle.kTextHeader3.copyWith(
                color: AppColor.grey,
                fontWeight: FontWeight.normal,
              ),),
            ],
          ),
          Row(
                mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsetsDirectional.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: AppColor.kPrimaryLigth
                ),
                child: IconButton(
                  onPressed: (){
                    setState(() {                      
                    });

                    muteMic = !muteMic;
                  },
                  icon: muteMic == false ? Image.asset('assets/icons/VolumeUp.png') : Image.asset('assets/icons/VolumeOff.png'), 
                ),
              ),
              const SizedBox(width: 30.0,),
              Container(
                padding: const EdgeInsetsDirectional.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: AppColor.red
                ),
                child: IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: SvgPicture.asset('assets/svgs/end.svg'), 
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
