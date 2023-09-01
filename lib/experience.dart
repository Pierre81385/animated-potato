import 'package:flutter/material.dart';

class ExperienceComponent extends StatefulWidget {
  const ExperienceComponent(
      {super.key,
      required this.width,
      required this.height,
      required this.device});

  final double width;
  final double height;
  final String device;

  @override
  State<ExperienceComponent> createState() => _ExperienceComponentState();
}

class _ExperienceComponentState extends State<ExperienceComponent> {
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
        ? Text("Mobile Experience")
        : Text("Desktop Experince");
  }
}
