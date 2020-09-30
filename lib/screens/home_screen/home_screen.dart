import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rohan_kadkol/constants.dart';
import 'package:rohan_kadkol/screens/home_screen/components/name_picture_card.dart';
import 'package:rohan_kadkol/widgets/bubble.dart';
import 'package:rohan_kadkol/widgets/custom_container.dart';

import 'components/education_card.dart';
import 'components/education_tile.dart';
import 'components/experience_tile.dart';

class HomeScreen extends StatelessWidget {
  static final String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 300.0,
            color: Colors.red,
            padding: const EdgeInsets.symmetric(
                vertical: kDefaultMargin * 2, horizontal: kDefaultMargin),
            child: Column(
              children: [
                NamePictureCard(),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.black,
              padding: const EdgeInsets.symmetric(
                  vertical: kDefaultMargin * 2, horizontal: kDefaultMargin),
              child: SingleChildScrollView(
                
                child: Column(
                  children: [
                    EducationTile(),
                    const SizedBox(
                      height: kDefaultMargin,
                    ),
                    ExperienceTile()
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
