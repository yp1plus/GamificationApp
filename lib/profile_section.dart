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
        height: 500.0,
        width: double.infinity,
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(width: 1, color: Colors.grey)),
            ),
            child: Row(
              children: [
                ProfileImage("", "Yure Pablo"),
                Column(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                            child: Container(
                              alignment: Alignment.topLeft,
                              padding: const EdgeInsets.all(4.0),
                              child: Text("Olá, Yure Pablo",
                                  style: greetingTextStyle,
                                  textAlign: TextAlign.left))),
                        Flexible(
                          child: Container(
                            alignment: Alignment.topRight,
                            padding: const EdgeInsets.all(4.0),
                            child: Text("Nível 1",
                                style: levelTextStyle,
                                textAlign: TextAlign.right))),
                      ]),
                  Flexible(child: PointsSection(112, 400)),
                ]),
              ],
            )),
      ),
    );
  }
}
