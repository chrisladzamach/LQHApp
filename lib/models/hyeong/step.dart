class Step {
  final int step;
  final String description;

  Step({required this.step, required this.description});

  factory Step.fromJson(Map<String, dynamic> json) {
    return Step(step: json['step'], description: json['description']);
  }
}
