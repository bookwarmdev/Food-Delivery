import 'package:flutter/material.dart'; 

class Background extends StatelessWidget {
  final Widget child;
  final VoidCallback? function; 
  const Background(
      {Key? key,
      required this.child,
      this.function,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
              top: -20.0,
              right: -5.0,
              child: Image.asset('assets/images/Pattern2.png'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: child,
              ),
            ),
          ],
        ), 
    );
  }
}
