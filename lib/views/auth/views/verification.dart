import 'package:flutter/material.dart';
import 'package:food_delivery/utils/ui.dart';
import 'package:food_delivery/utils/widget/navigator.dart';
import 'package:food_delivery/views/home/home.dart';

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  _Verification createState() => _Verification();
}

class _Verification extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NavigateBack(function: () => Navigator.pop(context), titel: ''),
            const Text(
              'Enter 4-digit \nVerification Code',
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
                'Code send to +637979****. This code will \nexpire in 01:30',
                style: TextStyle(
                  fontSize: 12,
                  height: 1.6,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: 'Enter code',
                ),
              ),
            ),
            Visibility(
              visible:
                  MediaQuery.of(context).viewInsets.bottom == 0 ? true : false,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 230),
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
