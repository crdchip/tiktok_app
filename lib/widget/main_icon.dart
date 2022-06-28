import 'package:flutter/material.dart';

class MainIcon extends StatelessWidget {
  final IconData icon;

  const MainIcon({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: Colors.amberAccent,
      size: 25,
    );
  }
}
