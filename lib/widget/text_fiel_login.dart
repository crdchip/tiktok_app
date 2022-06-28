import 'package:flutter/material.dart';

class TextFielLogin extends StatelessWidget {
  final Widget child;
  const TextFielLogin({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 60,
      width: size.width * 0.8,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.circular(40),
      ),
      child: child,
    );
  }
}
