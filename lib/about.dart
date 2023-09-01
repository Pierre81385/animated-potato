import 'package:flutter/material.dart';

class AboutComponent extends StatefulWidget {
  const AboutComponent(
      {super.key,
      required this.width,
      required this.height,
      required this.device});

  final double width;
  final double height;
  final String device;

  @override
  State<AboutComponent> createState() => _AboutComponentState();
}

class _AboutComponentState extends State<AboutComponent> {
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
    return device == "mobile" ? Text("Mobile About") : Text("Desktop About");
  }
}
