import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:my_grocery_plus/Screens/Authentication/Sign_In/password_login.dart';

import '../../../Widgets/reusable_widget.dart';

class PhoneLoginScreen extends StatefulWidget {
  const PhoneLoginScreen({Key? key}) : super(key: key);

  @override
  State<PhoneLoginScreen> createState() => _PhoneLoginScreenState();
}

class _PhoneLoginScreenState extends State<PhoneLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const CustomGradient(),
          SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 100),
                  Image.asset(
                    'images/phone.png',
                    height: 314,
                  ),
                  const SizedBox(height: 50),
                  Text(
                    'Enter Your Phone Number',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: const Color(0xff37474F),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'We need to verify you. We will send you a one time verification code.',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff939c9f),
                    ),
                  ),
                  const SizedBox(height: 40),
                  IntlPhoneField(
                    dropdownIcon: const Icon(Icons.phone),
                    decoration: const InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                    initialCountryCode: 'NG',
                    onChanged: (phone) {
                      debugPrint(phone.completeNumber);
                    },
                  ),
                  const Spacer(),
                  CustomBtn(
                    suffix: const Icon(
                      Icons.arrow_forward_rounded,
                      color: Colors.white,
                    ),
                    bottom: 20,
                    text: 'Next',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PasswordLogin(),
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
    );
  }
}

//added\
