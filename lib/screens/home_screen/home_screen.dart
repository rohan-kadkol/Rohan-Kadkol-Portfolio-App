import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rohan_kadkol/constants.dart';
import 'package:rohan_kadkol/screens/home_screen/components/name_picture_card.dart';
import 'package:rohan_kadkol/widgets/bubble.dart';
import 'package:rohan_kadkol/widgets/custom_container.dart';

import 'components/education_card.dart';

class HomeScreen extends StatelessWidget {
  static final String routeName = '/';

  final String relatedCourseWork1 =
      "Related Coursework: , Object Oriented Programming, Machine Learning, Database Management, Discrete Structures, Cloud & Web Programming, Comp Org & Design, Operating Systems, Numerical Methods, Statistics, Calculus I & II";
  final List<String> relatedCourseWorks = [
    'Advanced Data Structures and Algorithms',
    'Object Oriented Programming',
    'Machine Learning',
    'Database Management',
    'Discrete Structures',
    'Cloud & Web Programming',
    'Comp Org & Design',
    'Operating Systems',
    'Numerical Methods',
    'Statistics',
    'Calculus I & II'
  ];

  final List<String> androidRelatedCourseWorks = [
    'AAC: Data Model', 'Material Design', 'Fragment', 'Settings Fragment', 'JUnit/Espresso Testing', 'Firebase Cloud Message', 'Firebase Realtime Database', 'Content Providers'
  ];

  final List<String> fullStackCourseworks =[
    'Flask', 'Python', 'PostgreSQL', 'Building APIs', 'JWTs', 'Containerization with Docker', 'CI with AWS CodeBuild and CodePipeline'
  ];

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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  EducationCard(
                    title: 'Louisiana State University (LSU)',
                    right: 'August 2018 - May 2022',
                    subTitle: 'Bachelors of Science, Computer Science',
                    subRight: 'GPA: 4.28',
                    children: [
                      const SizedBox(height: kDefaultMargin / 1),
                      Center(
                        child: Wrap(
                            spacing: kDefaultMargin / 2,
                            runSpacing: kDefaultMargin / 4,
                            alignment: WrapAlignment.center,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            runAlignment: WrapAlignment.center,
                            children: relatedCourseWorks
                                .map((courseWork) => Bubble(text: courseWork))
                                .toList()),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: kDefaultMargin,
                  ),
                  EducationCard(
                    title: 'Udacity Android Nanodegree',
                    right: 'January 2019 - November 2019',
                    children: [
                      const SizedBox(height: kDefaultMargin / 1),
                      Center(
                        child: Wrap(
                            spacing: kDefaultMargin / 2,
                            runSpacing: kDefaultMargin / 4,
                            alignment: WrapAlignment.center,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            runAlignment: WrapAlignment.center,
                            children: androidRelatedCourseWorks
                                .map((courseWork) => Bubble(text: courseWork))
                                .toList()),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: kDefaultMargin,
                  ),
                  EducationCard(
                    title: 'Udacity Full Stack Nanodegree',
                    right: 'January 2020 - June 2020',
                    children: [
                      const SizedBox(height: kDefaultMargin / 1),
                      Center(
                        child: Wrap(
                            spacing: kDefaultMargin / 2,
                            runSpacing: kDefaultMargin / 4,
                            alignment: WrapAlignment.center,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            runAlignment: WrapAlignment.center,
                            children: fullStackCourseworks
                                .map((courseWork) => Bubble(text: courseWork))
                                .toList()),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
