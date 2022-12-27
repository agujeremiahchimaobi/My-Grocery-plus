import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_grocery_plus/Widgets/reusable_widget.dart';

class YourInformationScreen extends StatelessWidget {
  const YourInformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomGradient(
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back_rounded),
                ),
                const SizedBox(width: 10),
                Text(
                  'Your Information',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff37474F),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 120),
                Text(
                  'It looks like you don’t have account in this number. Please '
                  'let us know some information for a secure service',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff939c9f),
                  ),
                ),
                const SizedBox(height: 60),
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.grey.shade300,
                  child: const Icon(
                    Icons.add_a_photo_outlined,
                    size: 45,
                    color: Color(0xff37474F),
                  ),
                ),
                const SizedBox(height: 40),
                CustomBtn(
                  suffix: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'f',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  color: Colors.blue,
                  text: 'Sync from facebook',
                  bottom: 0,
                ),
                const SizedBox(height: 10),
                const CustomTextField(
                  hint: 'Full Name',
                  prefix: Icon(
                    Icons.account_circle_outlined,
                    size: 24,
                  ),
                ),
                const Spacer(),
                const CustomBtn(
                  suffix: Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.white,
                  ),
                  color: Color(0xff5ec401),
                  text: 'Next',
                  bottom: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
