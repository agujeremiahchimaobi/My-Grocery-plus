import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_grocery_plus/Providers/password_provider.dart';
import 'package:provider/provider.dart';

import '../../../Widgets/reusable_widget.dart';
import 'otp_verifiation_screen.dart';

class PasswordLogin extends StatefulWidget {
  const PasswordLogin({Key? key}) : super(key: key);

  @override
  State<PasswordLogin> createState() => _PasswordLoginState();
}

class _PasswordLoginState extends State<PasswordLogin> {
  // bool isObscure = false;

  @override
  Widget build(BuildContext context) {
    final isObscure = Provider.of<PasswordProvider>(context).isObscure;
    return Scaffold(
      body: Stack(
        children: [
          CustomGradient(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_rounded),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.only(left: 20, top: 100, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'images/password.png',
                    height: 314,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Enter The Password',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: const Color(0xff37474F),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'It looks like you already have an account in this number.'
                    'Please enter the password to proceed.',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff939c9f),
                    ),
                  ),
                  const SizedBox(height: 40),
                  CustomTextField(
                    prefix: const Icon(
                      Icons.lock_open_rounded,
                      size: 20,
                      color: Colors.black54,
                    ),
                    hint: 'Password',
                    suffix: GestureDetector(
                      onTap: () {
                        Provider.of<PasswordProvider>(context, listen: false)
                            .setVisibility();
                      },
                      child: Icon(
                        isObscure
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        size: 20,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Text(
                    'Forgot Password?',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.red,
                    ),
                  ),
                  Spacer(),
                  CustomBtn(
                    suffix: const Icon(
                      Icons.arrow_forward_rounded,
                      color: Colors.white,
                    ),
                    color: const Color(0xff5ec401),
                    text: 'Submit',
                    bottom: 20,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OtpVerificationScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
