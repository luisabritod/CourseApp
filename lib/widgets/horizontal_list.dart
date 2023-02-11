import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList(
      {super.key,
      required this.startColor,
      required this.endColor,
      required this.courseHeadLine,
      required this.courseTitle,
      required this.courseImage});

  final int startColor, endColor;
  final String courseHeadLine, courseTitle, courseImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 26),
      child: Container(
        width: 246,
        height: 349,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: const Alignment(1, 0.0),
              colors: <Color>[Color(startColor), Color(endColor)],
            )),
        child: Stack(children: [
          Positioned(
              left: 11,
              top: 15,
              child: Container(
                padding: const EdgeInsets.all(10),
                height: 39,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36),
                    color: const Color(0xFFaFa8ee)),
                child: Text(
                  courseHeadLine,
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 16),
                ),
              )),
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(
              courseImage,
            ),
          )
        ]),
      ),
    );
  }
}
