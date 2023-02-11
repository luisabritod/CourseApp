import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_course_app/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: const Color(0xff29274f),
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        physics: const BouncingScrollPhysics(),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Online',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 36,
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Text(
                'Master Class',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 36),
              ),
            ],
          ),
          const SizedBox(
            height: 22,
          ),
          SizedBox(
            height: 349,
            child: ListView.builder(
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return const HorizontalList(
                      startColor: 0xff9288e4,
                      endColor: 0xff534ea7,
                      courseHeadLine: 'Recommended',
                      courseTitle: 'UI/UX DESIGNER\nBEGINNER',
                      courseImage: 'assets/images/Saly-10.png');
                }),
          ),
          const SizedBox(
            height: 34,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Free online class',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              Text(
                'From over 80 Lectures',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff9c9a9a),
                    fontSize: 14),
              ),
            ],
          ),
          ListView.builder(
            itemCount: 2,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return const VerticalList(
                  courseImage: 'assets/images/Saly-24.png',
                  courseTitle: 'Flutter Developer',
                  courseDuration: '8 hours',
                  courseRating: 3.5);
            },
          )
        ],
      )),
    );
  }
}
