import 'dart:async';

import 'package:flutter/material.dart';
import 'package:necter/Screens/welcome.dart';
import 'package:necter/Utils/colors.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer.periodic(
      Duration(seconds: 3),
      (timer) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Welcome(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(constcolors.primarycolor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 1,
                    width: MediaQuery.of(context).size.width * 0.55,
                    child: Image.asset("assets/Images/logo.png"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
