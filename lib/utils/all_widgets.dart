

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AllWidgets {
  bigText(
      {required String text,
      double? fontSize = 30,
      FontWeight? fontWeight = FontWeight.w600,
      Color? color = Colors.black}) {
    return Text(text,
        style: GoogleFonts.getFont(
          'Inter',
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
        ));
  }

  smallText(
      {required String text,
      double? fontSize = 12,
      FontWeight? fontWeight = FontWeight.w500,
      Color? color = Colors.black}) {
    return Text(text,
        style: GoogleFonts.getFont(
          'Inter',
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
        ));
  }
}
