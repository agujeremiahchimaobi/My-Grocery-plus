import 'package:flutter/material.dart';
import 'package:my_grocery_plus/Screens/BasePages/category_page.dart';
import 'package:my_grocery_plus/Screens/homepage.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int selectedIndex = 0;
  Color color = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          renderView(
            0,
            const HomePage(),
          ),
          renderView(
            1,
            const Category(),
          ),
          renderView(
            2,
            Container(color: Colors.red),
          ),
          renderView(
            3,
            Container(color: Colors.red),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            currentIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              const BottomNavigationBarItem(
                activeIcon: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                  ),
                ),
                label: '',
                icon: Icon(Icons.home),
              ),
              const BottomNavigationBarItem(
                activeIcon: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.dashboard_outlined,
                    color: Colors.white,
                  ),
                ),
                label: '',
                icon: Icon(
                  Icons.dashboard_outlined,
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Column(
                  children: const [
                    Icon(
                      Icons.shopping_bag_outlined,
                    ),
                  ],
                ),
              ),
              BottomNavigationBarItem(
                activeIcon: CircleAvatar(),
                label: '',
                icon: Column(
                  children: const [
                    Icon(Icons.menu),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget renderView(int tabIndex, Widget view) {
    return IgnorePointer(
      ignoring: selectedIndex != tabIndex,
      child: Opacity(
        opacity: selectedIndex == tabIndex ? 1 : 0,
        child: view,
      ),
    );
  }
}
