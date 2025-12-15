import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/technique_models.dart';

class TechniquesService {
  static Future<List<TechniqueGroup>> loadGroups() async {
    final jsonString =
        await rootBundle.loadString('assets/json/all_techniques.json');

    final List data = json.decode(jsonString);

    return data.map((e) => TechniqueGroup.fromJson(e)).toList();
  }
}
