 
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/widget/background.dart';
import 'package:food_delivery/utils/widget/navigator.dart';
import '../auth.dart';

class UploadPreview extends StatefulWidget {
  const UploadPreview({Key? key}) : super(key: key);

  @override
  _UploadPreview createState() => _UploadPreview();
}

class _UploadPreview extends State<UploadPreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NavigateBack(function: () => Navigator.pop(context), titel: ''),
            const Text(
              'Upload Your Photo \nProfile',
              style: TextStyle(
                fontFamily: 'BentonSans_Bold',
                fontSize: 25,
                height: 1.2,
              ),
              textAlign: TextAlign.left,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text(
                'This data will be displayed in your account \naccount profile for security',
                style: TextStyle(
                  fontSize: 12,
                  height: 1.6,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    height: 238,
                    width: 245,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 0),
                          blurRadius: 50.0,
                          spreadRadius: 0.0,
                          color: AppColor.kblurColor.withOpacity(0.2),
                        ),
                      ],
                      image: const DecorationImage(
                        image: AssetImage('assets/images/Fine_Boy.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 5.0,
                    right: 10.0,
                    child: Material(
                      color: Colors.transparent,
                      child: Ink(
                        width: 35.0,
                        decoration: ShapeDecoration(
                          color: AppColor.white.withOpacity(0.4),
                          shape: const CircleBorder(),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.close),
                          iconSize: 20,
                          color: AppColor.white,
                          autofocus: false,
                          onPressed: () {
                            setState(() {
                              Navigator.pop(context);
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
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
                    width: 157,
                    decoration: const BoxDecoration(
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
