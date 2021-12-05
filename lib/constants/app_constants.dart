import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors{
  static const primaryColor = Color(0xff0FE425);
  static const secondaryColor = Color(0xffFAFAFA);
  static const textColors = Color(0xff094067);
  static const buttonColor = Color(0xff3DA9FC);
  static const cardColor = Color(0xff091429);
  static const hintColor = Color(0xffBDBDBD);
  static const buttonTextColor = Colors.white;
}

class CustomFonts{
  static googleHeaderFont(
      {var color, var fontSize, var fontWeight, var fontStyle,
        var letterSpacing, var height, var decoration}) {
    return GoogleFonts.poppins(
        height: height,
        color: color,
        letterSpacing: letterSpacing,
        decoration: decoration,
        fontSize: fontSize != null ? fontSize.toDouble() : null,
        fontWeight: fontWeight,
        fontStyle: fontStyle
    );
  }
}

class CustomFontsHome{
  static googleHeaderFont(
      {var color, var fontSize, var fontWeight, var fontStyle,
        var letterSpacing, var height, var decoration}) {
    return GoogleFonts.aBeeZee(
        height: height,
        color: color,
        letterSpacing: letterSpacing,
        decoration: decoration,
        fontSize: fontSize != null ? fontSize.toDouble() : null,
        fontWeight: fontWeight,
        fontStyle: fontStyle
    );
  }
}