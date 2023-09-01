import 'package:flutter/material.dart';

class FooterComponent extends StatefulWidget {
  const FooterComponent(
      {super.key,
      required this.width,
      required this.height,
      required this.device});

  final double width;
  final double height;
  final String device;

  @override
  State<FooterComponent> createState() => _FooterComponentState();
}

class _FooterComponentState extends State<FooterComponent> {
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
    return device == "mobile" ? Text("Mobile Footer") : Text("Desktop Footer");
  }
}
