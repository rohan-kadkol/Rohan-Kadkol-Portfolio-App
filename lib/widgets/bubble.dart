import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
import 'custom_container.dart';

class Bubble extends StatelessWidget {
  final String text;

  const Bubble({
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      color: Colors.red,
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultMargin / 2, horizontal: kDefaultMargin / 2),
      child: Text(
        text,
        style: GoogleFonts.roboto(color: Colors.white),
      ),
    );
  }
}
