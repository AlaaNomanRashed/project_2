import 'package:flutter/material.dart';

import '../Widgets/CardCustom.dart';
import '../Widgets/CardTop.dart';
import 'AboutPage.dart';
import 'EducationPage.dart';

class ExperiencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff040305),
      appBar: AppBar(
        backgroundColor: Color(0xff040305),
        elevation: 0,
        title: Text('About Me',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardTop(
                      icon: Icons.person_outline_rounded,
                      text: 'About Me',
                      isColor: false,
                      page: AboutMePage()),
                  CardTop(
                    page: EducationPage(),
                      icon: Icons.work_outline_outlined,
                      text: 'Experience',
                      isColor: true),
                  CardTop(
                      icon: Icons.stacked_line_chart_sharp,
                      text: 'Education',
                      isColor: false,
                      page: EducationPage()),
                ],
              ),
              const SizedBox(height: 15.0),
              const CardCustom(
                  text: 'Freelance Web Designer',
                  colorIcon: Color(0xffA36FF6),
                  isEducation: false, education: '',),
              const CardCustom(
                  text: 'Senior Web Developer',
                  colorIcon: Color(0xff83DBC5),
                  isEducation: false, education: '',),
              const CardCustom(
                  text: 'Semi Senior Web Developer',
                  colorIcon: Color(0xff0385DC),
                  isEducation: false, education: '',),
              const CardCustom(
                  text: 'Junior Web Developer',
                  colorIcon: Color(0xffE62755),
                  isEducation: false, education: '',),
              const CardCustom(
                  text: 'Freelance App Flutter',
                  colorIcon: Color(0xffF7605D),
                  isEducation: false, education: '',),
            ],
          ),
        ),
      ),
    );
  }
}
