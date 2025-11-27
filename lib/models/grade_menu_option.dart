import 'package:flutter/material.dart';

class GradeMenuOption {
  final String grade;
  final String romanized;
  final String hangul;
  final Widget screen;
  final Color color;

  GradeMenuOption({
    required this.grade,
    required this.romanized,
    required this.hangul,
    required this.screen,
    required this.color,
  });
}
