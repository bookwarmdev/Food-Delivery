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
                fontFamily: 'BentonSans_Bold', fontSize: 30, height: 1.2),
            textAlign: TextAlign.left,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Text(
              'This data will be displayed in your account \naccount profile for security',
              style: TextStyle(
                fontSize: 15,
                height: 1.2,
              ),
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
                          color: AppColor.grey,
                          blurRadius: 2,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Image(
                            image: AssetImage(
                              'assets/images/Gallery.png',
                            ),
                          ),
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
                  width: 141,
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
