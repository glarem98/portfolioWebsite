import 'package:flutter/material.dart';

import 'glass_content.dart';
class LogoAndBlurBox extends StatelessWidget {
  const LogoAndBlurBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('assets/images/Logo.png'),
        Spacer(),
        GlassContent(),
        Spacer(
          flex: 3,
        )
      ],
    );
  }
}
