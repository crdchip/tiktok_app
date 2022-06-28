import 'package:flutter/material.dart';

class ReactionItem extends StatelessWidget {
  final Widget child;
  final String text;

  const ReactionItem({Key? key, required this.child, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        child,
        Material(
            child: Padding(
          padding: const EdgeInsets.only(left: 4),
          child: InkWell(
              child: Text(text),
              onTap: () {
                Navigator.push(context, MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return Container();
                  },
                ));
              }),
        ))
      ],
    );
  }
}
