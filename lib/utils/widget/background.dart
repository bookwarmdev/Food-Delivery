import 'package:flutter/material.dart'; 

class Background extends StatelessWidget {
  final Widget widget;
  final VoidCallback? function; 
  const Background(
      {Key? key,
      required this.widget,
      this.function,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
              top: -20.0,
              right: -5.0,
              child: Image.asset('assets/images/Pattern2.png'),
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  child: widget,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
