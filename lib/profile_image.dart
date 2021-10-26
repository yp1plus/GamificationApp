// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';
import 'style.dart';

// ignore: must_be_immutable
class ProfileImage extends StatelessWidget {
  String _assetPath = "";
  String _firstCharName = "";

  ProfileImage(String assetPath, String name) {
    _assetPath = assetPath;
    if (name.isNotEmpty && assetPath.isEmpty) {
      _firstCharName = name[0].toUpperCase();
    }
  }

  final Color _color =
      RandomColor().randomColor(colorBrightness: ColorBrightness.light);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: 50.0,
              height: 50.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: _color,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(_assetPath),
                  )),
              child: Text(
                _firstCharName,
                style: imageTextStyle,
                textAlign: TextAlign.center,
              )),
        ]);
  }
}
