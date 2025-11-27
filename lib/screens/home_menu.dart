import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lqh_app/data/principal_menu_options.dart';
import 'package:lqh_app/widgets/principal_menu_button.dart';
import 'package:lqh_app/widgets/title_app.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Column(
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/images/logoJDK_optimized.png',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                TitleApp(),
              ],
            ),

            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                padding: const EdgeInsets.all(12),
                children: principalMenuOption.map((option) {
                  return PrincipalMenuButton(
                    icon: option.icon,
                    romanizedText: option.romanized,
                    spanishText: option.spanish,
                    hangulText: option.hangul,
                    screen: option.screen,
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
