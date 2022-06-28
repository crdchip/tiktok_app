import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class IconClient extends StatelessWidget {
  const IconClient(
      {Key? key, required this.icon, required this.size, required this.count})
      : super(key: key);

  final IconData icon;

  final String count;

  final double size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.white,
          size: size,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          count,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
