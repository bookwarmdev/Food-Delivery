import 'package:flutter/material.dart';

import 'package:food_delivery/views/auth/upload_picture.dart';
import 'package:food_delivery/views/auth/set_location.dart';

class UploadPreview extends StatefulWidget {
  const UploadPreview({Key? key}) : super(key: key);

  @override
  _UploadPreview createState() => _UploadPreview();
}

class _UploadPreview extends State<UploadPreview> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
            body: Stack(children: [
              Container(
                height: 200,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/icons/Patternn.png"),
                        fit: BoxFit.cover)),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UploadPicture(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 40, 0, 0),
                  child: Column(
                    children: [
                      Container(
                        height: 55,
                        width: 55,
                        decoration: const BoxDecoration(
                            color: Color(0xFFFFE0B2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: const Center(
                            child: Image(
                                image: AssetImage('assets/icons/Path.png'))),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                      child: Padding(
                    padding: EdgeInsets.fromLTRB(30, 115, 0, 0),
                    child: Text(
                      'Upload Your Photo \nProfile',
                      style: TextStyle(
                          fontFamily: 'BentonSans_Bold',
                          fontSize: 30,
                          height: 1.2),
                      textAlign: TextAlign.left,
                    ),
                  )),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                    child: Text(
                      'This data will be displayed in your account \naccount profile for security',
                      style: TextStyle(fontSize: 15, height: 1.2),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Container(
                            height: 250,
                            width: 250,
                            decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 2,
                                  )
                                ],
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Center(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Image(
                                      image: AssetImage(
                                          'assets/images/Gallery.png')),
                                ),
                              ],
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SetLocation(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Center(
                        child: Container(
                          height: 60,
                          width: 140,
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(83, 232, 139, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: const Center(
                              child: Text(
                            'Next',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          )),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ])));
  }
}
