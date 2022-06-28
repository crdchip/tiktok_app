import 'package:appclo/config/data/models/data/data_video.dart';
import 'package:appclo/config/data/models/video.dart';
import 'package:appclo/modules/home/modues/right_icon/get_album_img.dart';
import 'package:appclo/modules/home/modues/right_icon/get_profile.dart';
import 'package:appclo/modules/home/modues/right_icon/icon_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class IconRight extends StatefulWidget {
  const IconRight({
    Key? key,
    required this.video,
  }) : super(key: key);

  final Video video;

  @override
  State<IconRight> createState() => _IconRightState();
}

class _IconRightState extends State<IconRight>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
        bottom: 0,
        right: 0,
        height: 350,
        width: size.width * 0.15,
        child: Container(
          decoration: BoxDecoration(color: Colors.black45),
          child: Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GetProfile(img: "${widget.video.postedBy.urlImg}"),
                IconClient(
                    icon: CupertinoIcons.heart,
                    size: 35,
                    count: "${widget.video.likes}"),
                IconClient(
                    icon: CupertinoIcons.ellipsis_circle_fill,
                    size: 35,
                    count: "${widget.video.comments}"),
                IconClient(
                    icon: CupertinoIcons.arrowshape_turn_up_right,
                    size: 35,
                    count: "${widget.video.shares}"),
                AnimatedBuilder(
                    animation: _animationController,
                    child: Stack(children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/${widget.video.postedBy.urlImg}"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ]),
                    builder: (context, child) {
                      return Transform.rotate(
                        angle: 2 * 3.14 * _animationController.value,
                        child: child,
                      );
                    }),
              ],
            ),
          ),
        ));
  }
}
