import 'package:flutter/material.dart';
import 'package:my_website/constants.dart';

class Menu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MenuState();
  }
}

class _MenuState extends State<Menu> {
  @override
  int selectedIndex = 0;
  int hoverIndex = 0;
  List<String> menuItems = [
    'Home',
    'About',
    'Services',
    'Portfolio',
    'Testimonial',
    'Contact'
  ];
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: gDefaultPadding * 2.5),
      constraints: BoxConstraints(maxWidth: 1110),
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          boxShadow: [gDefaultShadow]),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:
              List.generate(menuItems.length, (index) => buildMenuItem(index))),
    );
  }

  Widget buildMenuItem(int index) => InkWell(
        onTap: (() {
          setState(() {
            selectedIndex = index;
          });
        }),
        onHover: (value) {
          setState(() {
            value ? hoverIndex = index : hoverIndex = selectedIndex;
          });
        },
        child: Container(
            constraints: BoxConstraints(minWidth: 122),
            height: 100,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Text(
                  menuItems[index],
                  style: TextStyle(fontSize: 20, color: gTextColor),
                ),
                // Hover
                AnimatedPositioned(
                    duration: Duration(milliseconds: 200),
                    right: 0,
                    left: 0,
                    bottom: selectedIndex != index && hoverIndex == index
                        ? -20
                        : -32,
                    child: Image.asset('assets/images/Hover.png')),
                //Select
                AnimatedPositioned(
                    duration: Duration(milliseconds: 200),
                    right: 0,
                    left: 0,
                    bottom: selectedIndex == index ? -2 : -32,
                    child: Image.asset('assets/images/Hover.png'))
              ],
            )),
      );
}
