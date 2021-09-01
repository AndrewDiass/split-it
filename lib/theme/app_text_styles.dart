import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme.dart';

abstract class AppTextStyles {
  TextStyle get title;
  TextStyle get button;
  TextStyle get nameAppBar;
  TextStyle get helloAppBar;
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  // TODO: implement button
  get button => GoogleFonts.inter(
        color: AppTheme.colors.button,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );

  @override
  // TODO: implement title
  get title => GoogleFonts.montserrat(
        color: AppTheme.colors.title,
        fontSize: 40,
        fontWeight: FontWeight.w700,
      );

  @override
  // TODO: implement title
  get nameAppBar => GoogleFonts.montserrat(
        fontSize: 20,
        fontWeight: FontWeight.w700,
      );

  @override
  // TODO: implement title
  get helloAppBar => GoogleFonts.montserrat(
        fontSize: 20,
        fontWeight: FontWeight.w400,
      );
}
