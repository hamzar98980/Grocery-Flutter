import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:necter/Components/mywidgets.dart';
import 'package:necter/Screens/location.dart';
import 'package:necter/Utils/colors.dart';

import '../Utils/string.dart';

class Digitcode extends StatelessWidget {
  const Digitcode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Location(),
              ));
        },
        child: Icon(Icons.keyboard_arrow_right_outlined),
        backgroundColor: Color(constcolors.primarycolor),
      ),
      body: Container(
        child: Column(
          children: [
            Bluryheader(),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text(
                    StringText.digicode,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 25, 0, 0),
                      child: Text(
                        "Mobile Number",
                        style: TextStyle(color: Color(0xFF7C7C7C)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextField(
                          maxLength: 4,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: "- - - -",
                            hintStyle: const TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: Text(
                        "Resend Code",
                        style:
                            TextStyle(color: Color(constcolors.primarycolor)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
