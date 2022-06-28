import 'package:flutter/cupertino.dart';
import 'package:appclo/config/data/models/video.dart';

import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';

class VideoTitle extends StatefulWidget {
  const VideoTitle({Key? key, required this.video}) : super(key: key);
  final Video video;

  @override
  State<VideoTitle> createState() => _VideoTitleState();
}

class _VideoTitleState extends State<VideoTitle> {
  late VideoPlayerController _videoController;
  late Future _initializeVideoPlayer;
  bool isPlay = false;
  @override
  void initState() {
    // _videoController =
    //     VideoPlayerController.network("${widget.video.urlVideo}");
    _videoController =
        VideoPlayerController.asset("assets/videos/${widget.video.urlVideo}");
    _initializeVideoPlayer = _videoController.initialize();

    _videoController.setLooping(true);
    super.initState();
  }

  @override
  void dispose() {
    _videoController.dispose();
    super.dispose();
  }

  void isPlayer() {
    isPlay = !isPlay;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
            width: size.width,
            height: size.height,
            child: FutureBuilder(
              future: _initializeVideoPlayer,
              builder: ((context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return VideoPlayer(_videoController);
                } else {
                  return Container(
                    color: Colors.black,
                  );
                }
              }),
            )),
        Positioned(
          top: 0,
          bottom: 0,
          left: 0,
          right: 0,
          child: InkWell(
              onTap: () {
                setState(() {
                  _videoController.value.isPlaying
                      ? _videoController.pause()
                      : _videoController.play();
                });
              },
              child: _videoController.value.isPlaying
                  ? Container()
                  : IconButton(
                      onPressed: () {
                        setState(() {
                          _videoController.value.isPlaying
                              ? _videoController.pause()
                              : _videoController.play();
                        });
                      },
                      icon: Icon(
                        CupertinoIcons.play_fill,
                        color: Colors.grey,
                        size: 45,
                      ))),
        )
      ],
    );
  }
}
