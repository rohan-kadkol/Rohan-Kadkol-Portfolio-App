import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rohan_kadkol/models/app.dart';
import 'package:rohan_kadkol/widgets/bubble.dart';
import 'package:rohan_kadkol/widgets/custom_container.dart';

import '../../../constants.dart';

class AppCard extends StatelessWidget {
  final App app;

  const AppCard({this.app});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      width: 200.0,
      height: 300.0,
      color: Colors.red,
      child: Column(
        children: [
          Text(
            app.title,
            style: GoogleFonts.roboto(
                color: Colors.white, fontSize: 27.0 * 2 / 3 - 2),
          ),
          const SizedBox(height: kDefaultMargin / 4),
          Text(
            app.description,
            // 'Help transportation companies and freelance drivers efficiently run their daily ride schedules',
            style: GoogleFonts.roboto(color: Colors.white),
          ),
          const SizedBox(height: kDefaultMargin / 4),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: kDefaultMargin / 4,
            runSpacing: kDefaultMargin / 4,
            children: app.links
                .map((link) => Bubble(
                      text: link.text,
                      link: link.link,
                      color: Colors.white,
                      textColor: Colors.black,
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
