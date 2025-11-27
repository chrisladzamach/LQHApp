import 'package:flutter/material.dart';
import 'package:lqh_app/screens/views/armed/basic_movements.dart';
import 'package:lqh_app/screens/views/armed/figures.dart';
import 'package:lqh_app/screens/views/unarmed/basic_movements.dart';
import 'package:lqh_app/screens/views/unarmed/figures.dart';
import 'package:lqh_app/screens/views/program.dart';
import 'package:lqh_app/screens/views/self_defense_techniques.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(title: Text('LQHApp')),
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/images/logoJDK_optimized.png',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'LQH',
                      style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'App',
                      style: TextStyle(
                        backgroundColor: Colors.yellow,
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 30,
                        height: 1,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                padding: EdgeInsets.all(12),
                children: [
                  _menuButton(
                    icon: "📖",
                    context,
                    color: Colors.red,
                    romanizedText: "Gwajeong",
                    spanishText: "(Programa)",
                    hangulText: "과정",
                    screen: Programa(),
                  ),
                  _menuButton(
                    icon: "🛡️",
                    context,
                    color: Colors.amber,
                    romanizedText: "Ho Sin Sul",
                    spanishText: "(Técnicas de defensa)",
                    hangulText: "호신술",
                    screen: SelfDefenseTechniques(),
                  ),
                  _menuButton(
                    icon: "🥋",
                    context,
                    color: Colors.blue,
                    romanizedText: "Hyeong",
                    spanishText: "(Figuras sin armas)",
                    hangulText: "형",
                    screen: FiguresWithoutWeapons(),
                  ),
                  _menuButton(
                    icon: "⚔️",
                    context,
                    color: Colors.purple,
                    romanizedText: "Mugi Hyeong",
                    spanishText: "(Figuras con armas)",
                    hangulText: "무기 형",
                    screen: FiguresWithWeapons(),
                  ),
                  _menuButton(
                    icon: "👊🏽",
                    context,
                    color: Colors.green,
                    romanizedText: "Gibon",
                    spanishText: "(Básicos sin armas)",
                    hangulText: "기본",
                    screen: BasicMovementsWithWeapons(),
                  ),
                  _menuButton(
                    icon: "🔪",
                    context,
                    color: Colors.white,
                    romanizedText: "Mugi Gibon",
                    spanishText: "(Básicos con armas)",
                    hangulText: "무기 기본",
                    screen: BasicMovementsWithoutWeapons(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _menuButton(
    BuildContext context, {
    required Color color,
    required String romanizedText,
    required String spanishText,
    required String hangulText,
    required Widget screen,
    required String icon,
  }) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
      },
      child: Container(
        decoration: BoxDecoration(
          border: BoxBorder.all(color: Colors.blueGrey),
          color: const Color(0xFF171F2A),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(icon, style: TextStyle(fontSize: 50)),
              Text(
                romanizedText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                spanishText,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 15,
                  fontWeight: FontWeight.w100,
                  letterSpacing: 1,
                ),
              ),
              Text(
                hangulText,
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 18,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
