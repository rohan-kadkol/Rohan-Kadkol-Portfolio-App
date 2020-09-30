import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';
import 'custom_container.dart';

class Bubble extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final String link;

  const Bubble({
    this.text,
    this.color,
    this.link,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      link: link,
      color: color ?? Colors.red,
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultMargin / 2, horizontal: kDefaultMargin / 2),
      child: FittedBox(
        child: Row(
          children: [
            Text(
              text,
              style: GoogleFonts.roboto(color: textColor ?? Colors.white),
            ),
          ]..addAll(link != null
              ? [
                  const SizedBox(width: kDefaultMargin / 4),
                  Icon(
                    Icons.open_in_new,
                    color: textColor ?? Colors.white,
                    size: 18.0,
                  )
                ]
              : []),
        ),
      ),
    );
  }
}
