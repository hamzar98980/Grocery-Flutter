import 'package:flutter/material.dart';
import 'package:necter/Screens/continue.dart';
import 'package:necter/Utils/colors.dart';
import 'package:necter/Utils/string.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 1,
                  child: Image.asset(
                    "assets/Images/onbording.png",
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 50,
                  child: Container(
                    child: Image.asset("assets/Images/carrot.png"),
                  ),
                ),
                Positioned(
                  bottom: 160,
                  right: 80,
                  left: 80,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1,
                    child: Text(
                      StringText.welcometxt1,
                      style: const TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 120,
                  right: 60,
                  left: 60,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1,
                    child: Text(
                      StringText.welcometxt2,
                      style: const TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 100,
                  right: 60,
                  left: 60,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1,
                    child: Text(
                      StringText.welcomesubtxt,
                      style: const TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 35,
                  right: 80,
                  left: 80,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Continue(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(500, 30),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: EdgeInsets.all(15),
                        primary: Color(constcolors.primarycolor)),
                    child: const Text(
                      "Get Started",
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
