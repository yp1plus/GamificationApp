// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'style.dart';

class PointsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("112", style: currentPointsTextStyle, textAlign: TextAlign.left),
        Text(" / 400 pontos",
            style: totalPointsTextStyle, textAlign: TextAlign.left),
        Container(
            padding: const EdgeInsets.all(4.0),
            child: Text("228 pontos para o próximo nível",
                style: descriptionLevelTextStyle, textAlign: TextAlign.right)),
      ],
    );
  }
}
