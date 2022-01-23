import 'package:flutter/material.dart';
import 'package:food_delivery/utils/ui.dart';
import 'package:food_delivery/views/auth/auth.dart';
import 'package:food_delivery/views/home/home.dart';
import 'package:food_delivery/views/passwords/via_methods.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return AuthBackground(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Column(
            children: [
              const SizedBox(
                height: 12.0,
              ),
              const Image(image: AssetImage("assets/images/Logo.png")),
              const Text(
                'Food Ninja',
                style: TextStyle(
                  color: AppColor.kPrimary,
                  fontSize: 40,
                  fontFamily: 'Viga',
                ),
              ),
              const Text(
                'Deliver Favourite Food',
                style: TextStyle(
                  fontFamily: 'Inter',
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Text(
                'Login To Your Account',
                style: TextStyle(
                  fontFamily: 'BentonSans_Bold',
                  fontSize: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: SizedBox(
                  width: 350,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: 'Email',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: 350,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        labelText: 'Password'),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text('or Continue With',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 57,
                      width: 152,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(13),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Image(
                            image: AssetImage("assets/icons/facebook.png"),
                          ),
                          Text(
                            'Facebook',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 57,
                      width: 152,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(13),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Image(
                            image: AssetImage("assets/icons/google-icon.png"),
                          ),
                          Text(
                            'Google',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ViaMethods(),
                    ),
                  );
                },
                child: const Text('Forgot Your Password?',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Colors.green,
                        decoration: TextDecoration.underline)),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    height: 57,
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
                        'Login',
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
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignupScreen(),),
                  );
                },
                child: const Text(
                  'Did not have an account?',
                  style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'BentonSans_Bold',
                      decoration: TextDecoration.underline,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
