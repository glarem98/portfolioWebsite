import 'package:flutter/material.dart';
import 'package:my_website/sections/about/about_section.dart';
import 'package:my_website/sections/top_section/top_section.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
            AboutSection(),
            SizedBox(
              height: 500,
            )
          ],
        ),
      ),
    );
  }
}
