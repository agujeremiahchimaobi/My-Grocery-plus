import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_grocery_plus/Widgets/reusable_widget.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomGradient(
            child: Text(
              'Category',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: const Color(0xff37474F),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 90,
            ),
            child: Column(
              children: [
                Expanded(
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisExtent: 170,
                      mainAxisSpacing: 40,
                    ),
                    children: const [
                      CategoryBox(
                        name: 'Fruits & Vegetables',
                        image: 'images/categoryveg.png',
                      ),
                      CategoryBox(
                        name: 'Breakfast',
                        image: 'images/categorybf.png',
                      ),
                      CategoryBox(
                        name: 'Beverages',
                        image: 'images/categorybev.png',
                      ),
                      CategoryBox(
                        name: 'Meat and Fish',
                        image: 'images/categorymeat.png',
                      ),
                      CategoryBox(
                        name: 'Snacks',
                        image: 'images/categorysnacks.png',
                      ),
                      CategoryBox(
                        name: 'Diary',
                        image: 'images/categorydiary.png',
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
