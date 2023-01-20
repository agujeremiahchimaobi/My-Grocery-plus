import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_grocery_plus/Screens/product_details_page.dart';
import 'package:my_grocery_plus/Widgets/reusable_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 2),
  )..forward();

  late Animation<Offset> animation;
  @override
  void initState() {
    var count = 4;
    animation =
        Tween(begin: const Offset(-10.0, 0.0), end: const Offset(0.0, 0.0))
            .animate(
      CurvedAnimation(
        curve: Interval((1 / count), 1.0, curve: Curves.fastOutSlowIn),
        parent: animationController,
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff1f2f5),
      body: SlideTransition(
        position: animation,
        child: Stack(
          children: [
            const CustomGradient(),
            Container(
              margin: const EdgeInsets.only(
                  left: 20, right: 20, top: 60, bottom: 20),
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Grocery Plus',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: const Color(0xff37474F),
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.notifications_outlined)
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Color(0xff87dd39),
                        child: Icon(
                          Icons.location_on_outlined,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Your Location'),
                          Text(
                            '32 Llanberis Close, Tonteg, CF38 1HR',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: const Color(0xff37474F),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search Anything',
                        prefixIcon: Icon(Icons.search_rounded),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: SlideTransition(
                      position: animation,
                      child: GridView(
                        scrollDirection: Axis.vertical,
                        physics: const BouncingScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 15,
                          mainAxisExtent: 170,
                        ),
                        controller: ScrollController(),
                        children: [
                          const CategoryBox(
                            image: 'images/catf&v.png',
                            name: 'Fruits and Vegetables',
                          ),
                          const CategoryBox(
                            image: 'images/catbf.png',
                            name: 'Breakfast',
                          ),
                          const CategoryBox(
                            image: 'images/catbev.png',
                            name: 'Beverages',
                          ),
                          const CategoryBox(
                            image: 'images/catmeat.png',
                            name: 'Meat and Fish',
                          ),
                          const CategoryBox(
                            image: 'images/catsnacks.png',
                            name: 'Snacks',
                          ),
                          CategoryBox(
                            image: 'images/catdiary.png',
                            name: 'Diary',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ProductDetails(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
