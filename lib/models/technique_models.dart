class Technique {
  final int number;
  final String description;

  Technique({
    required this.number,
    required this.description,
  });

  factory Technique.fromJson(Map<String, dynamic> json) {
    return Technique(
      number: json['technique'] ?? 0,
      description: json['description'] ?? '',
    );
  }
}

class Subgroup {
  final String name;
  final List<Technique> techniques;

  Subgroup({
    required this.name,
    required this.techniques,
  });

  factory Subgroup.fromJson(Map<String, dynamic> json) {
    final rawTechniques =
        json['techniques'] ?? json['tecnicas'] ?? [];

    return Subgroup(
      name: json['name'] ?? json['nombre'] ?? '',
      techniques: (rawTechniques as List)
          .map((e) => Technique.fromJson(e))
          .toList(),
    );
  }
}

class TechniqueGroup {
  final int id;
  final String name;
  final List<Subgroup> subgroups;

  TechniqueGroup({
    required this.id,
    required this.name,
    required this.subgroups,
  });

  factory TechniqueGroup.fromJson(Map<String, dynamic> json) {
    return TechniqueGroup(
      id: json['grupo'] ?? json['group'] ?? 0,
      name: json['name'] ?? '',
      subgroups: (json['subgroups'] as List? ?? [])
          .map((e) => Subgroup.fromJson(e))
          .toList(),
    );
  }
}
