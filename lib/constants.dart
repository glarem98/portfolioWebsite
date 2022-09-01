import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

const gTextColor = Color(0xFF707070);
const gTextLightColor = Color(0xFF555555);
const gDarkColor = Color(0xfab4b3);

const gDefaultPadding = 20.0;

final gDefaultShadow = BoxShadow(
  offset: Offset(0, 50),
  blurRadius: 50,
  color: Color(0xFF0700B1).withOpacity(0.15),
);

final gDefaultCardShadow = BoxShadow(
  offset: Offset(0, 20),
  blurRadius: 50,
  color: Colors.black.withOpacity(0.1),
);

// TextField dedign
final gDefaultInputDecorationTheme = InputDecorationTheme(
  border: gDefaultOutlineInputBorder,
  enabledBorder: gDefaultOutlineInputBorder,
  focusedBorder: gDefaultOutlineInputBorder,
);

final gDefaultOutlineInputBorder = OutlineInputBorder(
  // Maybe flutter team need to fix it on web
  // borderRadius: BorderRadius.circular(50),
  borderSide: BorderSide(
    color: Color(0xFFCEE4FD),
  ),
);
