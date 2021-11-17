// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'style.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'dart:math';

class PointsSection extends StatelessWidget {
  int _currentNumberPoints = 0;
  int _totalNumberPoints = 0;
  double _percentage = 0.0;
  static const double _iconSize = 20.0;

  PointsSection(int currentNumberPoints, int totalNumberPoints) {
    _currentNumberPoints = currentNumberPoints;
    _totalNumberPoints = totalNumberPoints;
    _percentage = currentNumberPoints / totalNumberPoints;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Row(
        children: [
        Text(_currentNumberPoints.toString(),
                  style: currentPointsTextStyle, textAlign: TextAlign.left),
        Text(" / ${_totalNumberPoints.toString()} pontos",
                  style: totalPointsTextStyle, textAlign: TextAlign.left),
        Expanded(child:Text("${(_totalNumberPoints - _currentNumberPoints).toString()} pontos para o próximo nível",
                  style: descriptionLevelTextStyle,
                  textAlign: TextAlign.right)),
        ],
      ),
      Stack(
        children: [
          Container(
            height: 20.0,
            child:
              LinearPercentIndicator(
              lineHeight: 10.0,
              percent: _percentage,
              progressColor: Colors.blue),
          ),
          LayoutBuilder(builder: (context, constrains) {
            var leftPadding = constrains.maxWidth * _percentage;
            return Padding(
              padding: EdgeInsets.only(left: leftPadding, top: 0),
              child: SizedBox(
                width: _iconSize,
                height: _iconSize,
                child: Image.asset(
                    "assets/images/164608.png")),
            );
          })
    ]),
    ]);
  }
}
