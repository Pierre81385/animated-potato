import 'package:flutter/material.dart';

class ProjectsComponent extends StatefulWidget {
  const ProjectsComponent(
      {super.key,
      required this.width,
      required this.height,
      required this.device});

  final double width;
  final double height;
  final String device;

  @override
  State<ProjectsComponent> createState() => _ProjectsComponentState();
}

class _ProjectsComponentState extends State<ProjectsComponent> {
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
        ? Text("Mobile Projects")
        : Text("Desktop Projects");
  }
}
