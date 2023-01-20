import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_grocery_plus/Screens/BaseWidget/base.dart';

import '../../../Widgets/reusable_widget.dart';

class ChoosePassword extends StatelessWidget {
  const ChoosePassword({Key? key}) : super(key: key);

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
                  'Choose a Password',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff37474F),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const SizedBox(height: 120),
                      Text(
                        'For the security & safety please choose a password',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff939c9f),
                        ),
                      ),
                      const SizedBox(height: 50),
                      Image.asset('images/choosepass.png'),
                      const SizedBox(height: 30),
                      const CustomTextField(
                        prefix: Icon(
                          Icons.lock_open,
                          color: Colors.black45,
                        ),
                        hint: 'Password',
                      ),
                      const SizedBox(height: 10),
                      const CustomTextField(
                        hint: 'Confirm Password',
                        prefix: Icon(Icons.lock_open),
                      ),
                      const Spacer(),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: CustomBtn(
                          suffix: const Icon(
                            Icons.arrow_forward_rounded,
                            color: Colors.white,
                          ),
                          color: const Color(0xff5ec401),
                          text: 'Finish, Good To Go',
                          bottom: 20,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const BasePage(),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
