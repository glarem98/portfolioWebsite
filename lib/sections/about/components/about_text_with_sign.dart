import 'package:flutter/material.dart';
import 'package:my_website/constants.dart';

class AboutTextWithSign extends StatelessWidget {
  const AboutTextWithSign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('About \n my story',
            style: Theme.of(context)
                .textTheme
                .headline2
                ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black)),
        SizedBox(
          height: gDefaultPadding * 2,
        ),
        Image.asset('assets/images/sign.png'),
      ],
    );
  }
}
