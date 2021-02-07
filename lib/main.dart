import 'package:album/controllers/home_binding.dart';
import 'package:album/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      initialBinding: HomeBinding(),
      theme: ThemeData(
        textTheme: Theme.of(context)
            .textTheme
            .apply(fontFamily: GoogleFonts.montserrat().fontFamily),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
      ),
    );
  }
}
