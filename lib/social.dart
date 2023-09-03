import 'package:flutter/material.dart';

class SocialComponent extends StatefulWidget {
  const SocialComponent(
      {super.key,
      required this.width,
      required this.height,
      required this.device});

  final double width;
  final double height;
  final String device;

  @override
  State<SocialComponent> createState() => _SocialComponentState();
}

class _SocialComponentState extends State<SocialComponent> {
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
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  shadowColor: Colors.transparent,
                  color: Colors.transparent,
                  shape: const CircleBorder(side: BorderSide.none),
                  elevation: 15,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("lib/assets/git.png"),
                          fit: BoxFit.fitWidth),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  shadowColor: Colors.transparent,
                  color: Colors.transparent,
                  shape: const CircleBorder(side: BorderSide.none),
                  elevation: 15,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("lib/assets/insta.png"),
                          fit: BoxFit.fitWidth),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  shadowColor: Colors.transparent,
                  color: Colors.transparent,
                  shape: const CircleBorder(side: BorderSide.none),
                  elevation: 15,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("lib/assets/face.png"),
                          fit: BoxFit.fitWidth),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  shadowColor: Colors.transparent,
                  color: Colors.transparent,
                  shape: const CircleBorder(side: BorderSide.none),
                  elevation: 15,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("lib/assets/linkd.png"),
                          fit: BoxFit.fitWidth),
                    ),
                  ),
                ),
              ),
            ],
          )
        : Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  shadowColor: Colors.transparent,
                  color: Colors.transparent,
                  shape: const CircleBorder(side: BorderSide.none),
                  elevation: 15,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("lib/assets/git.png"),
                          fit: BoxFit.fitWidth),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  shadowColor: Colors.transparent,
                  color: Colors.transparent,
                  shape: const CircleBorder(side: BorderSide.none),
                  elevation: 15,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("lib/assets/insta.png"),
                          fit: BoxFit.fitWidth),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  shadowColor: Colors.transparent,
                  color: Colors.transparent,
                  shape: const CircleBorder(side: BorderSide.none),
                  elevation: 15,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("lib/assets/face.png"),
                          fit: BoxFit.fitWidth),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  shadowColor: Colors.transparent,
                  color: Colors.transparent,
                  shape: const CircleBorder(side: BorderSide.none),
                  elevation: 15,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("lib/assets/linkd.png"),
                          fit: BoxFit.fitWidth),
                    ),
                  ),
                ),
              ),
            ],
          );
  }
}
