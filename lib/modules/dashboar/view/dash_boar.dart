import 'package:appclo/modules/dashboar/controller/dashboar_controller.dart';
import 'package:appclo/modules/home/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashBoarPage extends StatefulWidget {
  DashBoarPage({Key? key}) : super(key: key);

  @override
  State<DashBoarPage> createState() => _DashBoarPageState();
}

class _DashBoarPageState extends State<DashBoarPage> {
  final String routes = '/dashboar';
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GetBuilder<DashBoarController>(
      init: DashBoarController(),
      builder: (_) => Scaffold(
        body: getBody(size),
        bottomNavigationBar: getBottom(size),
      ),
    );
  }

  Widget getBody(Size size) {
    return IndexedStack(
      index: pageIndex,
      children: [
        HomePage(),
        const Center(
          child: Text(
            "Friend",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        const Center(
          child: Text(
            "Add",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        const Center(
          child: Text(
            "Message",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        const Center(
          child: Text(
            "Profile",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }

  Widget getBottom(Size size) {
    List bottomItems = [
      {
        "icon": Icons.home,
        "label": "Home",
        "isIcon": true,
      },
      {
        "icon": Icons.person,
        "label": "Friend",
        "isIcon": true,
      },
      {
        "icon": "",
        "label": "",
        "isIcon": false,
      },
      {
        "icon": Icons.message,
        "label": "Message",
        "isIcon": true,
      },
      {
        "icon": Icons.person,
        "label": "Profile",
        "isIcon": true,
      }
    ];
    return Container(
      color: Colors.black,
      width: size.width,
      height: size.height * 0.075,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 10.0, right: 10.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
                bottomItems.length,
                (index) => bottomItems[index]['isIcon']
                    ? InkWell(
                        onTap: () {
                          selectionIndex(index);
                        },
                        child: Column(
                          children: [
                            Icon(
                              bottomItems[index]["icon"],
                              color: Colors.white,
                            ),
                            const SizedBox(height: 5),
                            Text(
                              bottomItems[index]['label'],
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            )
                          ],
                        ),
                      )
                    : InkWell(
                        onTap: () {
                          selectionIndex(index);
                        },
                        child: Container()))),
      ),
    );
  }

  selectionIndex(index) {
    setState(() {
      pageIndex = index;
    });
  }
}
