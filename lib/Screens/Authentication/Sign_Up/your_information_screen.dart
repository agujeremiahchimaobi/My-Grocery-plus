import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_grocery_plus/Widgets/reusable_widget.dart';

import 'choose_password.dart';

class YourInformationScreen extends StatefulWidget {
  const YourInformationScreen({Key? key}) : super(key: key);

  @override
  State<YourInformationScreen> createState() => _YourInformationScreenState();
}

class _YourInformationScreenState extends State<YourInformationScreen> {
  File? imageFile;
  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

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
                ),
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
                GestureDetector(
                  onTap: () {
                    _getFromGallery();
                  },
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.grey.shade300,
                    backgroundImage:
                        imageFile != null ? FileImage(imageFile!) : null,
                    child: imageFile == null
                        ? const Icon(
                            Icons.add_a_photo_outlined,
                            color: Colors.black,
                            size: 50,
                          )
                        : const Text(''),
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
                  bottom: 10,
                ),
                const SizedBox(height: 5),
                const CustomTextField(
                  hint: 'Full Name',
                  prefix: Icon(
                    Icons.account_circle_outlined,
                    size: 24,
                  ),
                ),
                const Spacer(),
                CustomBtn(
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
                        builder: (context) => const ChoosePassword(),
                      ),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
