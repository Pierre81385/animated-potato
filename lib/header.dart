import 'package:flutter/material.dart';

class HeaderComponent extends StatefulWidget {
  const HeaderComponent(
      {super.key,
      required this.width,
      required this.height,
      required this.device});

  final double width;
  final double height;
  final String device;

  @override
  State<HeaderComponent> createState() => _HeaderComponentState();
}

class _HeaderComponentState extends State<HeaderComponent> {
  late double height;
  late double width;
  late String device;

  @override
  void initState() {
    height = widget.height;
    width = widget.width;
    device = widget.device;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return device == "mobile"
        ? Center(
            child: Material(
              shape: const CircleBorder(side: BorderSide.none),
              elevation: 15,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("lib/assets/me.png"),
                      fit: BoxFit.fitWidth),
                ),
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              shape: const CircleBorder(side: BorderSide.none),
              elevation: 15,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("lib/assets/me.png"),
                      fit: BoxFit.fitWidth),
                ),
              ),
            ),
          );
  }
}
