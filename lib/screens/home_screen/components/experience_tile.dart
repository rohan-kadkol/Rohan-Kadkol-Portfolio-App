import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rohan_kadkol/constants.dart';
import 'package:rohan_kadkol/screens/home_screen/components/education_card.dart';
import 'package:rohan_kadkol/screens/home_screen/components/title_content_tile.dart';
import 'package:rohan_kadkol/widgets/bubble.dart';
import 'package:rohan_kadkol/widgets/custom_container.dart';

class ExperienceTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TitleContentTile(
      title: 'Experience',
      children: [
        EducationCard(
          title: 'Android Developer',
          right: 'November 2018 - July 2020',
          subTitle: 'Freelancer',
          children: [
            const SizedBox(
              height: kDefaultMargin,
            ),
            Wrap(
              children: [
                CustomContainer(
                  width: 200.0,
                  height: 300.0,
                  color: Colors.red,
                  child: Column(
                    children: [

                      Text(
                        'TrackMyRide',
                        style: GoogleFonts.roboto(
                            color: Colors.white, fontSize: 27.0 * 2 / 3 - 2),
                      ),
                      const SizedBox(height: kDefaultMargin / 4),
                      Text(
                        'Help transportation companies and freelance drivers efficiently run their daily ride schedules',
                        style: GoogleFonts.roboto(color: Colors.white),
                      ),
                      Bubble(text: 'YouTube Demo', link: 'https://youtu.be/DztwH9vwmWM', color: Colors.white, textColor: Colors.black,)
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
