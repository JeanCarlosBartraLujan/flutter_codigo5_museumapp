import 'package:flutter/material.dart';
import 'package:flutter_codigo5_museumapp/pages/artist_detail_page.dart';
import 'package:flutter_codigo5_museumapp/pages/artist_page.dart';
import 'package:flutter_codigo5_museumapp/pages/explorer_page.dart';
import 'package:flutter_codigo5_museumapp/pages/init.dart';
import 'package:flutter_codigo5_museumapp/pages/intro_slider_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Museum App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.dmSansTextTheme(),
      ),
      home: InitPage(),
      // home: IntroSliderPage(),
    );
  }
}
