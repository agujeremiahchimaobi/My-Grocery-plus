import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_grocery_plus/Screens/Authentication/Sign_In/otp_verifiation_screen.dart';

import '../../../Widgets/reusable_widget.dart';

class PasswordLogin extends StatefulWidget {
  const PasswordLogin({Key? key}) : super(key: key);

  @override
  State<PasswordLogin> createState() => _PasswordLoginState();
}

class _PasswordLoginState extends State<PasswordLogin> {
  bool isObscure = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              CustomGradient(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back_rounded),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: CustomBtn(
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
                  ),
                ),
              ),
            ],
          ),
          Container(
            // height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 100),
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
                      setState(() {
                        isObscure = !isObscure;
                      });
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
                // const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
