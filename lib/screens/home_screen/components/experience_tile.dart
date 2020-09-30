import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rohan_kadkol/constants.dart';
import 'package:rohan_kadkol/models/app.dart';
import 'package:rohan_kadkol/models/experience.dart';
import 'package:rohan_kadkol/screens/home_screen/components/app_card.dart';
import 'package:rohan_kadkol/screens/home_screen/components/education_card.dart';
import 'package:rohan_kadkol/screens/home_screen/components/title_content_tile.dart';
import 'package:rohan_kadkol/widgets/bubble.dart';
import 'package:rohan_kadkol/widgets/custom_container.dart';

class ExperienceTile extends StatelessWidget {
  Experience android = Experience(
      name: 'Android Developer',
      company: 'Freelancer',
      date: 'November 2018 - July 2020',
      apps: [
        App(
            title: 'TrackMyRide',
            description:
                'Help transportation companies and freelance drivers efficiently run their daily ride schedules.',
            links: [
              Link(text: 'YouTube Demo', link: 'https://youtu.be/DztwH9vwmWM'),
              Link(
                  text: 'Google Play',
                  link: 'https://redirect.rohankadkol.com/google-play')
            ]),
        App(
            title: 'Earthquake Tracker',
            description:
                'Display list of earthquakes based on the user’s filters.',
            links: [
              Link(
                  text: 'Google Play',
                  link: 'https://redirect.rohankadkol.com/google-play'),
            ]),
        App(
            title: 'Dog Breed Catalog',
            description:
                'Display dog breeds list with information and pictures for each breed.',
            links: [
              Link(
                  text: 'Website',
                  link: 'https://dogbreedsapp.rohankadkol.com/')
            ]),
        App(
            title: 'ISA LSU',
            description:
                'Website and app for LSU’s International Student Association (ISA) members',
            links: [
              Link(text: 'Website', link: 'https://isalsu.rohankadkol.com/')
            ]),
        App(
            title: 'CSC 3102 SI Portal',
            description:
                'Portal for the students attending my SI (supplemental instruction) sessions for Advanced Data Structures and Algorithms.',
            links: [
              Link(text: 'Website', link: 'https://csc3102si.rohankadkol.com/')
            ]),
        App(
            title: 'Prefab App',
            description:
                'Store website for a to-be-started prefabricated components store.',
            links: [
              Link(
                  text: 'Website',
                  link: 'https://expert-prefab-technologies.rohankadkol.com/')
            ])
      ]);

  @override
  Widget build(BuildContext context) {
    return TitleContentTile(
      title: 'Experience',
      children: [
        EducationCard(
          title: android.name,
          right: android.date,
          subTitle: android.company,
          children: [
            const SizedBox(
              height: kDefaultMargin,
            ),
            Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: kDefaultMargin,
              runSpacing: kDefaultMargin,
              children: android.apps
                  .map((app) => AppCard(
                        app: app,
                      ))
                  .toList(),
            )
          ],
        ),
      ],
    );
  }
}
