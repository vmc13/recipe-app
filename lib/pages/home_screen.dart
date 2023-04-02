import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/pageview_recipe_list.dart';
import '../widgets/popular_recipe_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFe7eefb),
      appBar: AppBar(
        title: const Text('Recipes',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
            )),
        elevation: 0,
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          primary: true,
          children: [
            const SizedBox(height: 16.53),
            const PageViewRecipeList(),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                children: [
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.fire),
                    iconSize: 20,
                    color: const Color(0xFFFF0303),
                    onPressed: () {
                      print('Save');
                    },
                  ),
                  const SizedBox(width: 4.26),
                  const Text(
                    'Popular',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFFFF0303),
                      fontWeight: FontWeight.w600
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 16),
            const PopularRecipeList(),
          ],
        ),
      ),
      // bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
