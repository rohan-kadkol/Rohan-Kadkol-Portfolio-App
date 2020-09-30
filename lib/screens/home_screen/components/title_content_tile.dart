import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:rohan_kadkol/widgets/bubble.dart';

import '../../../constants.dart';
import 'education_card.dart';

class TitleContentTile extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const TitleContentTile({
    this.title,
    this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          style: GoogleFonts.roboto(fontSize: 30.0, color: Colors.white),
        ),
        const SizedBox(
          height: kDefaultMargin,
        ),
      ]..addAll(children != null ? children : []),
    );
  }
}
