import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/widget/background.dart';
import 'package:food_delivery/utils/widget/navigator.dart';
import '../auth.dart'; 

class SetLocation extends StatefulWidget {
  const SetLocation({Key? key}) : super(key: key);

  @override
  _SetLocation createState() => _SetLocation();
}

class _SetLocation extends State<SetLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
        body: Background(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NavigateBack(function: ()=> Navigator.pop(context), titel: ''),
              const Text(
              'Set Your Location',
              style: TextStyle(
                fontFamily: 'BentonSans_Bold',
                fontSize: 30,
                height: 1.2,),
              textAlign: TextAlign.left,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  'This data will be displayed in your account \naccount profile for security',
                  style: TextStyle(fontSize: 15, height: 1.2,),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Center(
                  child: Container(
                    height: 130,
                    width: 350,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 2,
                          )
                        ],
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.all(Radius.circular(15),),),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 18, 0, 0),
                          child: Row(
                            children: const [
                              Image(
                                  image: AssetImage(
                                      'assets/images/Pinlogo.png',),),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Your Location',
                                  style: TextStyle(
                                      fontFamily: 'BentonSans_Bold',
                                      fontSize: 18,),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            height: 50,
                            width: 340,
                            decoration:  BoxDecoration(
                                color: AppColor.grey.withOpacity(0.4),
                                borderRadius:  const BorderRadius.all(
                                    Radius.circular(15),),),
                            child: const Center(
                              child: Text(
                                'Set Location',
                                style: TextStyle(
                                    fontFamily: 'BentonSans_Bold',
                                    fontSize: 18,),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignSuccess(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: Center(
                    child: Container(
                      height: 60,
                      width: 140,
                      decoration: const BoxDecoration(
                          gradient: AppColor.authColor,
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: const Center(
                          child: Text(
                        'Next',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,),
                      ),),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),);
  }
}
