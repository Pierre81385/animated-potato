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
  late bool _selectedMobile = false;
  late int _selected = -1;

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
                child: InkWell(
                  onHover: (selected) {
                    setState(() {
                      if (selected) {
                        _selected = 0;
                      } else {
                        _selected = -1;
                      }
                    });
                  },
                  child: Material(
                    shadowColor:
                        _selected == 0 ? Colors.grey : Colors.transparent,
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
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (_selected < 0) {
                        _selected = 1;
                      } else {
                        _selected = -1;
                      }
                    });
                  },
                  child: Material(
                    shadowColor:
                        _selected == 1 ? Colors.pink : Colors.transparent,
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
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (_selected < 0) {
                        _selected = 2;
                      } else {
                        _selected = -1;
                      }
                    });
                  },
                  child: Material(
                    shadowColor:
                        _selected == 2 ? Colors.blue : Colors.transparent,
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
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (_selected < 0) {
                        _selected = 3;
                      } else {
                        _selected = -1;
                      }
                    });
                  },
                  child: Material(
                    shadowColor:
                        _selected == 3 ? Colors.blueGrey : Colors.transparent,
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
