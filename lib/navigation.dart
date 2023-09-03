import 'package:animated_potato/social.dart';
import 'package:flutter/material.dart';

class NavComponent extends StatefulWidget {
  const NavComponent(
      {super.key,
      required this.width,
      required this.height,
      required this.device,
      required this.onSelect});

  final double width;
  final double height;
  final String device;
  final void Function(int) onSelect;

  @override
  State<NavComponent> createState() => _NavComponentState();
}

class _NavComponentState extends State<NavComponent> {
  late double height;
  late double width;
  late String device;
  late void Function(int) _onSelect;
  int _selectedIndex = 1;
  int _activeNav = 1; //New

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _onSelect(index);
  }

  @override
  void initState() {
    height = widget.height;
    width = widget.width;
    device = widget.device;
    _onSelect = widget.onSelect;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return device == "mobile"
        ? BottomNavigationBar(
            currentIndex: _selectedIndex, //New
            onTap: _onItemTapped,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.account_tree_sharp),
                label: 'Projects',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'About',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Experience',
              ),
            ],
          )
        : Column(
            children: [
              Row(
                children: [
                  TextButton(
                      onPressed: () {
                        _onSelect(0);
                        setState(() {
                          _activeNav = 0;
                        });
                      },
                      child: Text(
                        _activeNav == 0
                            ? "projects".toUpperCase()
                            : "projects".toLowerCase(),
                        style: TextStyle(
                            fontWeight: _activeNav == 0
                                ? FontWeight.bold
                                : FontWeight.normal),
                      )),
                  TextButton(
                      onPressed: () {
                        _onSelect(1);
                        setState(() {
                          _activeNav = 1;
                        });
                      },
                      child: Text(
                        _activeNav == 1
                            ? "about".toUpperCase()
                            : "about".toLowerCase(),
                        style: TextStyle(
                            fontWeight: _activeNav == 1
                                ? FontWeight.bold
                                : FontWeight.normal),
                      )),
                  TextButton(
                      onPressed: () {
                        _onSelect(2);
                        setState(() {
                          _activeNav = 2;
                        });
                      },
                      child: Text(
                        _activeNav == 2
                            ? "experience".toUpperCase()
                            : "experience".toLowerCase(),
                        style: TextStyle(
                            fontWeight: _activeNav == 2
                                ? FontWeight.bold
                                : FontWeight.normal),
                      )),
                ],
              ),
              SocialComponent(width: width, height: height, device: device)
            ],
          );
  }
}
