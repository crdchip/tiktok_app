import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:expandable_text/expandable_text.dart';

class LabelLeft extends StatelessWidget {
  const LabelLeft({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        left: 0,
        // height: 100,
        width: size.width * 0.75,
        child: Container(
          decoration: BoxDecoration(color: Colors.black45),
          child: Padding(
            padding: EdgeInsets.all(8),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                "@Tôm Manhwa",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              const ExpandableText(
                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren,",
                expandText: "Xem thêm",
                collapseText: "Ẩn",
                linkColor: Colors.white,
                expandOnTextTap: true,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontStyle: FontStyle.normal),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 20,
                child: Row(
                  children: [
                    const Icon(
                      CupertinoIcons.music_note_2,
                      size: 15,
                      color: Colors.white,
                    ),
                    // Icon(Icons.music_note_rounded),
                    Container(
                      width: size.width * 0.5,
                      height: 20,
                      child: Marquee(
                        text: "Link nhạc    +  ",
                        velocity: 20,
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              )
            ]),
          ),
        ));
  }
}
