import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    Key? key,
    required this.text,
    this.onTap,
    this.bottom,
    this.color,
    required this.suffix,
  }) : super(key: key);

  final String text;
  final dynamic onTap;
  final double? bottom;
  final Color? color;
  final Widget suffix;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: EdgeInsets.only(bottom: bottom!),
        height: 50,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Spacer(),
                suffix,
              ],
            ),
            Center(
              child: Text(
                text,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomGradient extends StatelessWidget {
  const CustomGradient({
    Key? key,
    this.child,
  }) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 15),
      height: 230,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white54,
            Color(0xffefe9e9),
            Color(0xffdfebed),
            Color(0xfff4d4d0),
          ],
        ),
        border: Border.all(color: Colors.transparent),
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: child,
      ),
    );
  }
}

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    Key? key,
    required this.hint,
    this.prefix,
    this.suffix,
  }) : super(key: key);

  final String hint;
  final dynamic prefix;
  final dynamic suffix;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscure = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 51,
      decoration: BoxDecoration(
        color: const Color(0xfff0f1f2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            child: TextField(
              textAlign: TextAlign.left,
              // obscureText: isObscure,
              cursorColor: Colors.black54,
              cursorHeight: 20,
              decoration: InputDecoration(
                prefixIcon: widget.prefix,
                border: InputBorder.none,
                suffixIcon: widget.suffix,
                hintText: widget.hint,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
