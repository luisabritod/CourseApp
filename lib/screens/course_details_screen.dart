import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseDetailsScreen extends StatefulWidget {
  const CourseDetailsScreen({super.key});

  @override
  State<CourseDetailsScreen> createState() => _CourseDetailsScreenState();
}

class _CourseDetailsScreenState extends State<CourseDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff29274f),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 392,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(22),
                      bottomRight: Radius.circular(22)),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(1, 0.0),
                      colors: <Color>[Color(0xfff4c465), Color(0xffc63956)]),
                  image: DecorationImage(
                      alignment: Alignment.bottomRight,
                      image: AssetImage('assets/images/Saly-36.png'))),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RatingBar.builder(
                      initialRating: 5,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 18,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                      itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Color(0xfff4c465),
                          ),
                      onRatingUpdate: (rating) {
                        // ignore: avoid_print
                        print(rating);
                      }),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('Graphic Design Master              ',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25)),
                  const SizedBox(
                    height: 29,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 112.5,
                        child: Stack(children: [
                          Positioned(
                              child: Container(
                            height: 45,
                            width: 45,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/Ellipse 3.png'))),
                          )),
                          Positioned(
                              left: 22.5,
                              child: Container(
                                height: 45,
                                width: 45,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/Ellipse 4.png'))),
                              )),
                          Positioned(
                              left: 45,
                              child: Container(
                                height: 45,
                                width: 45,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/Ellipse 5.png'))),
                              )),
                          Positioned(
                              left: 67.5,
                              child: Container(
                                height: 45,
                                width: 45,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/Ellipse 6.png'))),
                              ))
                        ]),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        '+28k members',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.normal,
                            color: const Color(0xffCACACA),
                            fontSize: 18),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 115,
                        width: 115,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/Saly-20.png'))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Introduction Design Graphic',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                            Text(
                              '12 Minutes',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff8c8c8c),
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 115,
                        width: 115,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/Saly-21.png'))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Fundamental of Design',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                            Text(
                              '16 Minutes',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff8c8c8c),
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 115,
                        width: 115,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage(
                            'assets/images/Saly-25.png',
                          ),
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Layout Design',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                            Text(
                              '10 Minutes',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff8c8c8c),
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
