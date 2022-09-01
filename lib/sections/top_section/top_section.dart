// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_website/constants.dart';
import 'components/logo_blur_content.dart';
import 'components/menu.dart';
import 'components/person_picture.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: 900, minHeight: 700),
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/background8.png'))),
      child: Container(
        margin: EdgeInsets.only(top: gDefaultPadding),
        width: 1200,
        child: Stack(
          children: [
            LogoAndBlurBox(),
            Positioned(bottom: 0, right: 0, child: PersonPicture()),
            Positioned(bottom: 0, child: Menu())
          ],
        ),
      ),
    );
  }
}
