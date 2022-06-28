import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class NavBarHome extends StatelessWidget {
  const NavBarHome({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 80,
        // right: 0,
        height: 50,
        width: size.width,
        child: Container(
          // decoration: BoxDecoration(color: Colors.black45),
          child: Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: const Icon(
                    CupertinoIcons.bookmark_fill,
                    size: 35,
                    color: Colors.yellow,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Following",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "|",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Follow",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  child: const Icon(
                    CupertinoIcons.search,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
