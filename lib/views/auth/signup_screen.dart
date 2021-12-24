import 'package:flutter/material.dart'; 
import 'package:food_delivery/views/auth/signup_process.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _isObscure = true;
  bool _value = false;
  bool _valuee = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
            body: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/Pattern.png"),
                          fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Center(
                    child: Column(
                      children: [
                        const Image(
                            image: AssetImage("assets/images/Logo.png")),
                        const Text('Food Ninja',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 45,
                                fontFamily: 'Viga')),
                        const Text('Deliver Favourite Food',
                            style: TextStyle(fontFamily: 'Inter')),
                        const Padding(
                          padding: EdgeInsets.only(top: 17),
                          child: Text('Sign Up For Free',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  fontFamily: 'BentonSans_Bold')),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: SizedBox(
                            width: 350,
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  prefixIcon: const Image(
                                    image:
                                        AssetImage("assets/icons/Profile.png"),
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  labelText: 'Acount'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: SizedBox(
                            width: 350,
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  prefixIcon: const Image(
                                    image:
                                        AssetImage("assets/icons/Message.png"),
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  labelText: 'Email'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: SizedBox(
                            width: 350,
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  prefixIcon: const Image(
                                    image: AssetImage("assets/icons/Lock.png"),
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  labelText: 'Password',
                                  suffixIcon: IconButton(
                                      icon: Icon(_isObscure
                                          ? Icons.visibility
                                          : Icons.visibility_off),
                                      onPressed: () {
                                        setState(() {
                                          _isObscure = !_isObscure;
                                        });
                                      })),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(35, 10, 0, 0),
                          child: Row(
                            children: [
                              Center(
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      _value = !_value;
                                    });
                                  },
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.green),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: _value
                                          ? const Icon(
                                              Icons.check,
                                              size: 15,
                                              color: Colors.white,
                                            )
                                          : const Icon(
                                              Icons.check_box_outline_blank,
                                              size: 15,
                                              color: Colors.green),
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 13),
                                child: Text(
                                  "Keep Me Signed In",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(35, 7, 0, 0),
                          child: Row(
                            children: [
                              Center(
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      _valuee = !_valuee;
                                    });
                                  },
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.green),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: _valuee
                                          ? const Icon(
                                              Icons.check,
                                              size: 15,
                                              color: Colors.white,
                                            )
                                          : const Icon(
                                              Icons.check_box_outline_blank,
                                              size: 15,
                                              color: Colors.green),
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 13),
                                child: Text(
                                  "Email me About Special Pricing",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignProcess(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              height: 60,
                              width: 140,
                              decoration: const BoxDecoration(
                                  color: Color.fromRGBO(83, 232, 139, 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: const Center(
                                  child: Text(
                                'Create Account',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              )),
                            ),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignProcess()),
                              );
                            },
                            child: const Text(
                              'already have an account?',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontFamily: 'BentonSans_Bold',
                                  decoration: TextDecoration.underline),
                            ))
                      ],
                    ),
                  ),
                )
              ],
            )));
  }
}
