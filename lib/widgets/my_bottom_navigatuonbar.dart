import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.house,
                    ))
                : IconButton(
                    onPressed: () {},
                    icon: const FaIcon(FontAwesomeIcons.house)),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.magnifyingGlass,
                    ))
                : IconButton(
                    onPressed: () {},
                    icon: const FaIcon(FontAwesomeIcons.magnifyingGlass)),
            label: 'Search'),
        BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.bell,
                    ))
                : IconButton(
                    onPressed: () {},
                    icon: const FaIcon(FontAwesomeIcons.bell)),
            label: 'Notification')
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.red,
      onTap: _onItemTapped,
    );
  }
}
