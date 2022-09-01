import 'package:flutter/material.dart';


class PersonPicture extends StatelessWidget {
  const PersonPicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
          constraints: BoxConstraints(maxWidth: 639, maxHeight: 860),
          child: Image.asset('assets/images/person.png'),
        );
  }
}
