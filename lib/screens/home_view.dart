import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Theme Manager
    final manager = AdaptiveTheme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          children: [
            // Text
            Text('Home View'),

            // Theme Button
            ElevatedButton(
              onPressed: () {
               if(manager.mode.isLight) {
                 manager.setDark();
               } else {
                 manager.setLight();
               }
              },
              child: Text('Change Theme'),
            ),
          ],
        ),
      ),
    );
  }
}
