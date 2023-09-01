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
  int _selectedIndex = 1; //New

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //     _onSelect(index);
  //   });
  // }

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
            onTap: _onSelect,
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
        : Row(
            children: [
              TextButton(
                  onPressed: () {
                    _onSelect(0);
                  },
                  child: Text("Projects")),
              TextButton(
                  onPressed: () {
                    _onSelect(1);
                  },
                  child: Text("About")),
              TextButton(
                  onPressed: () {
                    _onSelect(2);
                  },
                  child: Text("Experience")),
            ],
          );
  }
}
