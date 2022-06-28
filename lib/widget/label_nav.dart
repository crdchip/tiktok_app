import 'package:flutter/material.dart';

class LabelNav extends StatefulWidget {
  LabelNav(
      {Key? key,
      required this.text,
      required this.color1,
      required this.color2})
      : super(key: key);

  String text;
  Color color1;
  Color color2;

  @override
  State<LabelNav> createState() => _LabelNavState();
}

class _LabelNavState extends State<LabelNav> {
  bool changeColorsNav = false;

  void changeColors() {
    setState(() {
      changeColorsNav = !changeColorsNav;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        changeColors();
      },
      child: Text(
        widget.text,
        style: TextStyle(
            color: changeColorsNav == true
                ? widget.color1
                : widget.color2.withOpacity(0.25),
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
