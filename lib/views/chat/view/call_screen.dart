import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({ Key? key }) : super(key: key);

  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(child: Text('Comming Soon')),
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: const Text('Back'))
        ],
      ),
    );
  }
}