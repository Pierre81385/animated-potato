import 'package:flutter/material.dart';

class HeaderComponent extends StatefulWidget {
  const HeaderComponent(
      {super.key,
      required this.width,
      required this.height,
      required this.device,
      required this.hero});

  final double width;
  final double height;
  final String device;
  final bool hero;

  @override
  State<HeaderComponent> createState() => _HeaderComponentState();
}

class _HeaderComponentState extends State<HeaderComponent> {
  late double height;
  late double width;
  late String device;
  late bool hero;

  @override
  void initState() {
    height = widget.height;
    width = widget.width;
    device = widget.device;
    hero = widget.hero;
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
                width: hero ? width : 200,
                height: hero ? height : 200,
                decoration: BoxDecoration(
                  shape: hero ? BoxShape.rectangle : BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("lib/assets/me.png"),
                      fit: hero ? BoxFit.fitHeight : BoxFit.fitWidth),
                ),
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              shape: const CircleBorder(side: BorderSide.none),
              elevation: 50,
              child: Container(
                width: hero ? width : 200,
                height: hero ? height : 200,
                decoration: BoxDecoration(
                  shape: hero ? BoxShape.rectangle : BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("lib/assets/me.png"),
                      fit: hero ? BoxFit.fitHeight : BoxFit.fitWidth),
                ),
              ),
            ),
          );
  }
}
