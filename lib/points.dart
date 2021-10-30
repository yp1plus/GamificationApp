// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'style.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'dart:math';

class PointsSection extends StatelessWidget {
  int _currentNumberPoints = 0;
  int _totalNumberPoints = 0;
  double _percentage = 0.0;
  static const double _iconSize = 30.0;

  PointsSection(int currentNumberPoints, int totalNumberPoints) {
    _currentNumberPoints = currentNumberPoints;
    _totalNumberPoints = totalNumberPoints;
    _percentage = currentNumberPoints / totalNumberPoints;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          Text(_currentNumberPoints.toString(),
              style: currentPointsTextStyle, textAlign: TextAlign.left),
          Text(" / ${_totalNumberPoints.toString()} pontos",
              style: totalPointsTextStyle, textAlign: TextAlign.left),
          /*Container(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                  "${(_totalNumberPoints - _currentNumberPoints).toString()} pontos para o próximo nível",
                  style: descriptionLevelTextStyle,
                  textAlign: TextAlign.right))*/
        ],
      ),
      /*Stack(fit: StackFit.loose, children: [
        LinearPercentIndicator(
            width: 100.0,
            lineHeight: 8.0,
            percent: _percentage,
            progressColor: Colors.blue),
        LayoutBuilder(builder: (context, constrains) {
          var leftPadding = constrains.maxWidth * _percentage - _iconSize;
          var topPadding = (constrains.maxHeight - _iconSize) / 2;
          return Padding(
            padding: EdgeInsets.only(left: leftPadding, top: topPadding),
            child: Transform.rotate(
                angle: pi / 2,
                child: Icon(Icons.airplanemode_active,
                    size: _iconSize.toDouble())),
          );
        })*/
      ]);
    //]);
  }
}
