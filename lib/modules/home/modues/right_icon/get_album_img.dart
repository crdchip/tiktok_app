import 'package:flutter/material.dart';

class GetAlbumImg extends StatefulWidget {
  GetAlbumImg({Key? key, required this.albumImg}) : super(key: key);
  final String albumImg;

  @override
  State<GetAlbumImg> createState() => _GetAlbumImgState();
}

class _GetAlbumImgState extends State<GetAlbumImg> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 55,
        height: 55,
        alignment: Alignment.bottomCenter,
        child: Transform.rotate(
          angle: 90,
          child: Stack(
            children: <Widget>[
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                  image: DecorationImage(
                    // image: NetworkImage(widget.albumImg),
                    image: AssetImage("assets/images/${widget.albumImg}"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
