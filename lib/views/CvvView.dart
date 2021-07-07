import 'package:flutter/material.dart';

class CvvView extends StatelessWidget {
  static const routeName = "/cvv";

  const CvvView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("CVV dinamico"),
      ),
    );
  }
}
