import 'package:flutter/material.dart';
import 'package:lqh_app/models/grade_menu_option.dart';
import 'package:lqh_app/screens/views/grades/gup1.dart';
import 'package:lqh_app/screens/views/grades/gup2.dart';
import 'package:lqh_app/screens/views/grades/gup3.dart';

final List<GradeMenuOption> gradeMenuOptions = [
  GradeMenuOption(
    grade: "Blanco",
    romanized: "(Hayan tti)",
    hangul: "하얀 띠",
    screen: Gup1(),
    color: Colors.white,
  ),
  GradeMenuOption(
    grade: "Amarillo",
    romanized: "(Noran tti)",
    hangul: "노란 띠",
    screen: Gup2(),
    color: Colors.yellow,
  ),
  GradeMenuOption(
    grade: "Naranja",
    romanized: "(juhwang tti)",
    hangul: "주황 띠",
    screen: Gup3(),
    color: Colors.orange,
  ),
];
