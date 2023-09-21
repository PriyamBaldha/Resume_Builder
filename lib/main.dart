import 'package:flutter/material.dart';
import 'package:resume_builder/pages/options/Achievements.dart';
import 'package:resume_builder/pages/options/Declaration_page.dart';
import 'package:resume_builder/pages/options/Education_page.dart';
import 'package:resume_builder/pages/options/Experience.dart';
import 'package:resume_builder/pages/options/Interest_hobbies_page.dart';
import 'package:resume_builder/pages/options/Projects_page.dart';
import 'package:resume_builder/pages/options/References.dart';
import 'package:resume_builder/pages/options/Technical_skills_page.dart';
import 'package:resume_builder/pages/options/carrier%20objective.dart';
import 'package:resume_builder/pages/options/contact_info_page.dart';
import 'package:resume_builder/pages/options/personal_details_page.dart';
import 'package:resume_builder/pages/pdf_page.dart';
import 'package:resume_builder/pages/resume_builder_page.dart';
import 'package:resume_builder/pages/resume_workspace_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const HomePage(),
    initialRoute: 'homepage',
    routes: {
      'homepage': (context) => HomePage(),
      'ResumeWorkSpace': (context) => ResumeWorkSpace(),
      'ContactInfo': (context) => ContactInfo(),
      'Carrier_Objective': (context) => Carrier_Objective(),
      'Technical_skills': (context) => Technical_skills(),
      'Personal_details': (context) => Personal_details(),
      'Education': (context) => Education(),
      'Interest_hobbis': (context) => Interest_hobbis(),
      'Experience': (context) => Experience(),
      'Projects': (context) => Projects(),
      'Achievements': (context) => Achievements(),
      'Reference': (context) => Reference(),
      'Declaration': (context) => DeclarationPage(),
      'PDF_Page': (context) => PDF_Page(),
    },
  ));
}
