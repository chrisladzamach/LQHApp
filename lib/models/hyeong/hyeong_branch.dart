import 'figure.dart';
import 'step.dart';

class HyeongBranch {
  final String branch;
  final List<Figure>? figures;
  final List<Step>? steps;

  HyeongBranch({required this.branch, this.figures, this.steps});

  factory HyeongBranch.fromJson(Map<String, dynamic> json) {
    return HyeongBranch(
      branch: json['branch'],
      figures: json['figures'] != null
          ? (json['figures'] as List).map((e) => Figure.fromJson(e)).toList()
          : null,
      steps: json['steps'] != null
          ? (json['steps'] as List).map((e) => Step.fromJson(e)).toList()
          : null,
    );
  }

  bool get hasFigures => figures != null && figures!.isEmpty;
  bool get hasSteps => steps != null && steps!.isEmpty;
}
