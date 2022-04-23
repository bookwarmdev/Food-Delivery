import 'package:flutter/material.dart';
import 'package:food_delivery/utils/ui.dart';
import 'package:food_delivery/utils/widget/navigator.dart';
import 'package:food_delivery/views/passwords/success.dart';

class Passwords extends StatefulWidget {
  const Passwords({Key? key}) : super(key: key);

  @override
  _Passwords createState() => _Passwords();
}

bool _isPassword = true;
bool _isComfirmPass = true;

class _Passwords extends State<Passwords> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NavigateBack(function: () => Navigator.pop(context), titel: ''),
                const Text(
                  'Reset Your Password \nHere',
                  style: TextStyle(
                    fontFamily: 'BentonSans_Bold',
                    fontSize: 25,
                    height: 1.2,
                  ),
                  textAlign: TextAlign.left,
                ),
                const Text(
                  'Select which contact details should we \nuse to reset your password',
                  style: TextStyle(
                    fontSize: 12,
                    height: 1.6,
                  ),
                  textAlign: TextAlign.left,
                ),
                Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: TextField(
                          obscureText: _isPassword,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            labelText: 'Password',
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isPassword
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: AppColor.kPrimary,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isPassword = !_isPassword;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: TextField(
                        obscureText: _isComfirmPass,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          labelText: 'Confirm Password',
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isComfirmPass
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: AppColor.kPrimary,
                            ),
                            onPressed: () {
                              setState(() {
                                _isComfirmPass = !_isComfirmPass;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Success(),
                  ),
                );
              },
              child: Center(
                child: Container(
                  height: 60,
                  width: 140,
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
                          fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}
