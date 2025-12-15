import 'package:flutter/material.dart';

class GradeMenuButton extends StatelessWidget {
  final String grade;
  final String romanizedText;
  final String hangulText;
  final Color color;
  final Widget screen;

  const GradeMenuButton({
    super.key,
    required this.grade,
    required this.romanizedText,
    required this.hangulText,
    required this.color,
    required this.screen,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            transitionDuration: const Duration(milliseconds: 200),
            pageBuilder: (_, _, _) => screen,
            transitionsBuilder: (_, animation, _, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          ),
        );
      },

      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blueGrey),
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                grade,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                romanizedText,
                style: const TextStyle(color: Colors.black87, fontSize: 16),
              ),

              Text(
                hangulText,
                style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
