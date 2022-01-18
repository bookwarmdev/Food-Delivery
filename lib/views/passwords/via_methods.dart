import 'package:flutter/material.dart';
import 'package:food_delivery/utils/ui.dart';
import 'package:food_delivery/utils/widget/navigator.dart';  
import 'package:food_delivery/views/passwords/passwords.dart';

class ViaMethods extends StatefulWidget {
  const ViaMethods({Key? key}) : super(key: key);

  @override
  _ViaMethods createState() => _ViaMethods();
}

class _ViaMethods extends State<ViaMethods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NavigateBack(function: () => Navigator.pop(context), titel: ''),
            const Text(
              'Forgot Password',
              style: TextStyle(
                fontFamily: 'BentonSans_Bold',
                fontSize: 30,
                height: 1.2,
              ),
              textAlign: TextAlign.left,
            ),
            const Text(
              'Select which contact details should we \nuse to reset your password',
              style: TextStyle(fontSize: 15, height: 1.2),
              textAlign: TextAlign.left,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: Container(
                  height: 110, 
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 2,
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 25, 0, 0),
                        child: Row(
                          children: [
                            const Image(
                              image: AssetImage('assets/images/Message.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Via sms',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: Text(
                                      '**** **** 6768',
                                      style: TextStyle(
                                          fontFamily: 'BentonSans_Bold',
                                          fontSize: 18),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: Container(
                  height: 110, 
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 2,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 25, 0, 0),
                        child: Row(
                          children: [
                            const Image(
                              image: AssetImage('assets/images/Email.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Via email',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: Text(
                                      '**** **** @gmail.com',
                                      style: TextStyle(
                                        fontFamily: 'BentonSans_Bold',
                                        fontSize: 18,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
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
                    builder: (context) => const Passwords(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Center(
                  child: Container(
                    height: 60,
                    width: 141,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(83, 232, 139, 1),
                      gradient: AppColor.authColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
