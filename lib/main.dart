
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mycart/cart.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:  'ECOM',
      theme: ThemeData(
        // scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Cart(),
      /*routes: {
          '/':(context)=>Cart(),
        }*/


    );

  }
}