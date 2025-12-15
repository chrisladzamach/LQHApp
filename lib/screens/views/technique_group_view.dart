import 'package:flutter/material.dart';
import '../../models/technique_models.dart';

class TechniqueGroupView extends StatelessWidget {
  final TechniqueGroup group;

  const TechniqueGroupView({super.key, required this.group});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.yellow, weight: 300),
        backgroundColor: Colors.black,
        title: Text(group.name, style: TextStyle(color: Colors.yellow)),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: group.subgroups.length,
        itemBuilder: (context, index) {
          final subgroup = group.subgroups[index];

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (subgroup.name.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    subgroup.name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),

              ...subgroup.techniques.map(
                (tech) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: [
                        TextSpan(
                          text: '${tech.number}. ',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white70,
                          ),
                        ),
                        TextSpan(
                          text: tech.description,
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),
            ],
          );
        },
      ),
    );
  }
}
