import 'package:flutter/material.dart';
import 'package:lqh_app/models/techniques/technique_models.dart';
import 'package:lqh_app/services/techniques_service.dart';
import 'package:lqh_app/screens/views/technique_group_view.dart';

class SelfDefenseTechniques extends StatelessWidget {
  const SelfDefenseTechniques({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.yellow, weight: 300),
        backgroundColor: Colors.black,
        title: const Text(
          'Técnicas (Ho Sin Sul)',
          style: TextStyle(color: Colors.yellow),
        ),
      ),
      body: FutureBuilder<List<TechniqueGroup>>(
        future: TechniquesService.loadGroups(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'ERROR:\n${snapshot.error}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.red),
                ),
              ),
            );
          }

          final groups = snapshot.data;

          if (groups == null || groups.isEmpty) {
            return const Center(
              child: Text(
                'No hay técnicas disponibles',
                style: TextStyle(color: Colors.white54),
              ),
            );
          }

          return GridView.builder(
            padding: const EdgeInsets.all(12),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: 1.2,
            ),
            itemCount: groups.length,
            itemBuilder: (context, index) {
              final group = groups[index];

              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      opaque: true,
                      transitionDuration: const Duration(milliseconds: 200),
                      pageBuilder: (_, __, ___) =>
                          TechniqueGroupView(group: group),
                      transitionsBuilder: (_, animation, __, child) {
                        return FadeTransition(opacity: animation, child: child);
                      },
                    ),
                  );
                },
                child: Card(
                  color: const Color(0xFF171F2A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(color: Colors.blueGrey, width: 1),
                  ),
                  elevation: 3,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(6),
                      child: Text(
                        group.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
