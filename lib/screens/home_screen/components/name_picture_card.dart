import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rohan_kadkol/widgets/custom_container.dart';

import '../../../constants.dart';

class NamePictureCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: const EdgeInsets.all(kDefaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 100.0,
            backgroundImage: AssetImage('assets/images/rohan_kadkol.jpg'),
          ),
          const SizedBox(height: kDefaultMargin),
          Text(
            'Rohan Kadkol',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(fontSize: 30.0),
          ),
          const SizedBox(
            height: kDefaultMargin / 2,
          ),
          Text(
            '"computer science and improv"',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(fontSize: 20.0),
          )
        ],
      ),
    );
  }
}
