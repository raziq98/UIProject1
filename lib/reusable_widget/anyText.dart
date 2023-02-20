// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names, prefer_const_constructors

import 'package:calendar_app/misc/colors.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class anyText extends StatelessWidget {
  final double size;
  final String text;
  final FontWeight fontweight;
  const anyText({
    Key? key,
    required this.size,
    required this.text,
    required this.fontweight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.quicksand(
        fontSize: size,
        fontWeight: fontweight,
        color: AppColors.textColor3,
      ),
    );
  }
}
