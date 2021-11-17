// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'profile_image.dart';
import 'style.dart';
import 'points.dart';

class ProfileSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acompanhamentos'),
      ),
      body: Container(
        height: 130.0,
        width: double.infinity,
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(width: 1, color: Colors.grey)),
            ),
            child: Row(
              children: [
                ProfileImage("", "Yure Pablo"),
                Expanded(
                  child:Padding(
                    padding: EdgeInsets.only(left: 4.0),
                    child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Olá, Yure Pablo",
                                  style: greetingTextStyle),
                          Text("Nível 1",
                                  style: levelTextStyle),
                        ]),
                    Padding(
                      padding:EdgeInsets.only(top: 8.0),
                      child:PointsSection(112, 400),
                    ),  
                ]))),
              ],
            )),
      ),
    );
  }
}
