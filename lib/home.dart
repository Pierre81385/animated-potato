import 'package:animated_potato/about.dart';
import 'package:animated_potato/experience.dart';
import 'package:animated_potato/header.dart';
import 'package:animated_potato/navigation.dart';
import 'package:animated_potato/projects.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late double height;
  late double width;
  late String device = "desktop";
  double mobileBreakWidth = 480;

  int _selectedIndex = 1;

  void _onSelect(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    height = widget.height;
    width = widget.width;
    _onSelect(_selectedIndex);
    if (width > mobileBreakWidth) {
      device = "desktop";
    } else {
      device = "mobile";
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _pages = <Widget>[
      ProjectsComponent(width: width, height: height, device: device),
      AboutComponent(width: width, height: height, device: device),
      ExperienceComponent(width: width, height: height, device: device),
    ];

    return device == "mobile"
        ? Scaffold(
            body: SafeArea(
              child: Container(
                child: Column(
                  children: [
                    //vertical layout
                    HeaderComponent(
                        width: width, height: height, device: device),
                    _pages.elementAt(_selectedIndex)
                    //footer
                  ],
                ),
              ),
            ),
            bottomNavigationBar: NavComponent(
              device: device,
              width: width,
              height: height,
              onSelect: _onSelect,
            ))
        : Scaffold(
            body: Column(
              children: [
                //horizontal layout
                HeaderComponent(width: width, height: height, device: device),
                NavComponent(
                  device: device,
                  width: width,
                  height: height,
                  onSelect: _onSelect,
                ),
                _pages.elementAt(_selectedIndex)

                //body
                //footer
              ],
            ),
          );
  }
}
