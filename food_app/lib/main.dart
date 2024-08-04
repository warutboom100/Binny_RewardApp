import 'package:flutter/material.dart';
import 'package:food_app/pages/homepage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.ibmPlexSansThaiTextTheme(
          Theme.of(context)
              .textTheme, // ถ้าไม่ใส่ มันจะตั้งค่า Default ทุกอย่างตาม ThemeData.light().textTheme
        ),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}
