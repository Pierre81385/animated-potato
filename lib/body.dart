import 'package:flutter/material.dart';

class BodyComponent extends StatefulWidget {
  const BodyComponent(
      {super.key,
      required this.width,
      required this.height,
      required this.device});

  final double width;
  final double height;
  final String device;

  @override
  State<BodyComponent> createState() => _BodyComponentState();
}

class _BodyComponentState extends State<BodyComponent> {
  late double height;
  late double width;
  late String device;

  @override
  void initState() {
    height = widget.height;
    width = widget.width;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return device == "mobile"
        ? Container(
            child: Column(
              children: [
                //vertical layout
                //header
                //nav
                //body
                //footer
              ],
            ),
          )
        : Container(
            child: Column(
              children: [
                //horizontal layout
                //header
                //nav
                //body
                //footer
              ],
            ),
          );
  }
}
