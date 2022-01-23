import 'package:flutter/material.dart';
import 'package:food_delivery/utils/ui.dart';  
import 'package:food_delivery/utils/widget/navigator.dart';
import '../auth.dart';

class SignProcess extends StatefulWidget {
  const SignProcess({Key? key}) : super(key: key);

  @override
  _SignProcess createState() => _SignProcess();
}

class _SignProcess extends State<SignProcess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NavigateBack(function: () => Navigator.pop(context), titel: ''),
            const Text(
              'Fill in your bio to get \nstarted',
              style: TextStyle(
                fontFamily: 'BentonSans_Bold',
                fontSize: 30,
                height: 1.2,
              ),
              textAlign: TextAlign.left,
            ),
            const Text(
              'This data will be displayed in your account \naccount profile for security',
              style: TextStyle(
                fontSize: 15,
                height: 1.2,
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 20.0,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                labelText: 'First Name',
              ),
            ),
            const SizedBox(height: 20.0,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                labelText: 'Last Name',
              ),
            ),
            const SizedBox(height: 20.0,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                labelText: 'Mobile Number',
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PaymentMethod(),
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
                          fontSize: 16.0,
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
