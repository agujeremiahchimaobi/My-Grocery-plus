import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_grocery_plus/Widgets/reusable_widget.dart';
import 'package:provider/provider.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // int counter = Provider.of<CounterProvider>(context).counter;
    Color borderColor = Provider.of<BorderColorProvider>(context).borderColor;
    Color borderColor2 = Provider.of<BorderColorProvider>(context).borderColor2;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            CustomGradient(
              child: Row(
                children: [
                  const Icon(Icons.arrow_back),
                  const SizedBox(width: 10),
                  Text(
                    'Product details',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 100,
                left: 20,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset('images/danol.png'),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Provider.of<BorderColorProvider>(context,
                                  listen: false)
                              .selectColor();
                        },
                        child: Container(
                          height: 66,
                          width: 66,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(
                              color: borderColor,
                              width: 2.5,
                            ),
                          ),
                          child: Image.asset('images/dano_s2.png'),
                        ),
                      ),
                      const SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          Provider.of<BorderColorProvider>(context,
                                  listen: false)
                              .selectColor2();
                        },
                        child: Container(
                          height: 66,
                          width: 66,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(
                              color: borderColor2,
                              width: 2.5,
                            ),
                          ),
                          child: Image.asset('images/dano_s2.png'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'Arla DANO Full Cream Milk Powder Instant',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        '1 KG',
                        style: GoogleFonts.poppins(
                          fontSize: 29,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '৳182',
                        style: GoogleFonts.poppins(
                          fontSize: 29,
                          fontWeight: FontWeight.w700,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Image.asset('images/query.png'),
                      const SizedBox(width: 5),
                      Text(
                        'Diary Products',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.menu),
                      const SizedBox(width: 5),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        child: Text(
                          'Et quidem faciunt, ut summum \nbonum sit extremum et '
                          'rationibus \nconquisitis de voluptate. '
                          'Sed ut \nsummum bonum sit id,',
                          textAlign: TextAlign.start,
                          maxLines: 4,
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 35),
                  Text(
                    'You can also check these items',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      Image.asset('images/nido.png'),
                      const SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nestle Nido Full Cream \nMilk Powder instant',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            '৳342',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff323a3f),
                            ),
                          ),
                          Text(
                            '৳270',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xffF37A20),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Image.asset(
                        'images/danom.png',
                        scale: 1.0,
                      ),
                      const SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nestle Nido Full Cream \nMilk Powder instant',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            '৳342',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff323a3f),
                            ),
                          ),
                          Text(
                            '৳270',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xffF37A20),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CounterProvider with ChangeNotifier {
  int counter = 0;
  void increase() {
    counter++;
    notifyListeners();
  }

  void decrease() {
    counter--;
    notifyListeners();
  }
}

class BorderColorProvider with ChangeNotifier {
  bool isGreen = true;
  bool transparent = false;
  Color borderColor = Colors.green;
  Color borderColor2 = Colors.transparent;

  void selectColor() {
    isGreen = !isGreen;
    if (isGreen) {
      borderColor = Colors.green;
      borderColor2 = Colors.transparent;
      // notifyListeners();
    } else {
      borderColor = Colors.transparent;
      borderColor2 = Colors.green;
      // notifyListeners();
    }
    notifyListeners();
  }

  void selectColor2() {
    transparent = !transparent;
    if (transparent) {
      borderColor2 = Colors.transparent;
      borderColor = Colors.green;
      // notifyListeners();
    } else {
      borderColor2 = Colors.green;
      borderColor = Colors.transparent;
      // notifyListeners();
    }
    notifyListeners();
  }
}
