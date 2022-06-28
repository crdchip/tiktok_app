import 'package:appclo/config/data/models/video.dart';
import 'package:flutter/material.dart';

class GetProfile extends StatelessWidget {
  const GetProfile({Key? key, required this.img}) : super(key: key);

  final String img;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 55,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/$img"),
                  fit: BoxFit.cover,
                )),
          ),
          Positioned(
              bottom: -2,
              child: Container(
                width: 20,
                height: 20,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.pinkAccent),
                child: const Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
