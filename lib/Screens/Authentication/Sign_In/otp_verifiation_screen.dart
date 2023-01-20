import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Widgets/reusable_widget.dart';
import '../Sign_Up/your_information_screen.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const CustomGradient(),
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 150),
                      Image.asset('images/phone.png'),
                      const SizedBox(height: 20),
                      Text(
                        'Enter Verification Code',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff37474F),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'we have sent an SMS to:',
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff939c9f),
                        ),
                      ),
                      Text(
                        '0XXXXXXXXXX',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 56,
                            width: 57,
                            decoration: BoxDecoration(
                              color: const Color(0xffF0F1F2),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: TextField(
                              cursorColor: Colors.black54,
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                            ),
                          ),
                          Container(
                            height: 56,
                            width: 57,
                            decoration: BoxDecoration(
                              color: const Color(0xffF0F1F2),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: TextField(
                              cursorColor: Colors.black54,
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                            ),
                          ),
                          Container(
                            height: 56,
                            width: 57,
                            decoration: BoxDecoration(
                              color: const Color(0xffF0F1F2),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: TextField(
                              cursorColor: Colors.black54,
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                            ),
                          ),
                          Container(
                            height: 56,
                            width: 57,
                            decoration: BoxDecoration(
                              color: const Color(0xffF0F1F2),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: TextField(
                              cursorColor: Colors.black54,
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                            ),
                          ),
                          Container(
                            height: 56,
                            width: 57,
                            decoration: BoxDecoration(
                              color: const Color(0xffF0F1F2),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: TextField(
                              cursorColor: Colors.black54,
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      Row(
                        children: [
                          Text(
                            'Forgot Password?',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.red,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            'Change Phone Number',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.blue,
                            ),
                          ),
                        ],
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
                          text: 'Next',
                          bottom: 20,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const YourInformationScreen(),
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
          ],
        ),
      ),
    );
    // body: Stack(
    //   children: [
    //     Column(
    //       children: [
    //
    //         Expanded(
    //             child: Container(
    //           margin: const EdgeInsets.symmetric(horizontal: 20),
    //           child:
    //         ))
    //       ],
    //     ),
    //
    //             ],
    //           ),
    //           /
    //         ],
    //       ),
    //     )
    //   ],
    // ),
    // );
  }
}
