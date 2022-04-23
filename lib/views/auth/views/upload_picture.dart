import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/widget/background.dart';
import 'package:food_delivery/utils/widget/navigator.dart';
import '../auth.dart';

class UploadPicture extends StatefulWidget {
  const UploadPicture({Key? key}) : super(key: key);

  @override
  _UploadPicture createState() => _UploadPicture();
}

class _UploadPicture extends State<UploadPicture> {
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
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 129,
                    width: 350,
                    decoration: BoxDecoration(
                      boxShadow: (MediaQuery.of(context).platformBrightness ==
                              Brightness.light)
                          ? AppColor.appContanerShadow
                          : AppColor.appContanerShadowDark,
                      color: (MediaQuery.of(context).platformBrightness ==
                              Brightness.light)
                          ? AppColor.white
                          : AppColor.darkContainer.withOpacity(0.4),
                      borderRadius: const BorderRadius.all(
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
                        Text(
                          'From Gallery',
                          style: TextStyle(
                            fontFamily: 'BentonSans_Bold',
                          ),
                        ),
                      ],
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 129,
                    width: 350,
                    decoration: BoxDecoration(
                      boxShadow: (MediaQuery.of(context).platformBrightness ==
                              Brightness.light)
                          ? AppColor.appContanerShadow
                          : AppColor.appContanerShadowDark,
                      color: (MediaQuery.of(context).platformBrightness ==
                              Brightness.light)
                          ? AppColor.white
                          : AppColor.darkContainer.withOpacity(0.4),
                      borderRadius: const BorderRadius.all(
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
                                'assets/images/Group.png',
                              ),
                            ),
                          ),
                          Text(
                            'Take Photo',
                            style: TextStyle(
                              fontFamily: 'BentonSans_Bold',
                            ),
                          ),
                        ],
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
                  builder: (context) => const UploadPreview(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 70),
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
                          fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
