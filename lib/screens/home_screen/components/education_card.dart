import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rohan_kadkol/widgets/custom_container.dart';

import '../../../constants.dart';

class EducationCard extends StatelessWidget {
  final String title;
  final String right;
  final String subTitle;
  final String subRight;
  final List<Widget> children;

  const EducationCard({
    this.title,
    this.right,
    this.subTitle,
    this.subRight,
    this.children,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(
          //   'Education',
          //   style: GoogleFonts.roboto(fontSize: 27.0),
          // ),
          // const SizedBox(
          //   height: kDefaultMargin,
          // ),
          Row(
            children: [
              Text(
                title ?? '',
                style: GoogleFonts.roboto(fontSize: 27.0 * 2 / 3),
              ),
              Spacer(),
              Text(
                right ?? '',
                style: GoogleFonts.roboto(fontSize: 27.0 * 2 / 3),
              )
            ],
          ),
          const SizedBox(height: kDefaultMargin / 4),
          Row(
            children: [
              Text(
                subTitle ?? '',
                style: GoogleFonts.roboto(fontSize: 27.0 * 2 / 3 - 2),
              ),
              Spacer(),
              Text(
                subRight ?? '',
                style: GoogleFonts.roboto(fontSize: 27.0 * 2 / 3 - 2),
              )
            ],
          ),
        ]..addAll(children != null ? children : []),
      ),
    );
  }
}
