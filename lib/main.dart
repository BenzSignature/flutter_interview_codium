import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interview_codium/test_5_7/views/basic_layout.dart';
import 'package:interview_codium/test_5_7/views/person_page.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Interview CODIUM',
        theme: ThemeData(
          textTheme: GoogleFonts.kanitTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: SafeArea(
          child: (Basiclayout()),
        ),
      );
    });
  }
}
