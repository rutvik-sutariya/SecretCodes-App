library my_prj.globals;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class textStyle {
  static final TextStyle subHeading = GoogleFonts.ptSansCaption(
    fontSize: 20,
    color: colorBlack,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle heading = GoogleFonts.manrope(
    color: colorBlack,
    fontSize: 22,
    fontWeight : FontWeight.w700
  );

  static final TextStyle smallText = GoogleFonts.ptSansCaption(
    fontSize: 14,
    color: colorSubHeadingText,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle smallData = GoogleFonts.ptSansCaption(
    fontSize: 14,
    color: colorWhite,
      fontWeight : FontWeight.w400
    // height: 1.2,
    // letterSpacing: 1,
  );

}
