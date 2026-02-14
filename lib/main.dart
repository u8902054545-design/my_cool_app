import 'package:flutter/material.dart';
import 'page_one.dart';
import 'page_two.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Route _anim(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, anim, secAnim) => page,
      transitionsBuilder: (context, anim, secAnim, child) {
        return FadeTransition(opacity: anim, child: ScaleTransition(scale: anim, child: child));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("ГЛАВНАЯ", style: TextStyle(fontSize: 30, letterSpacing: 5)),
            const SizedBox(height: 30),
            ElevatedButton(onPressed: () => Navigator.push(context, _anim(const PageOne())), child: const Text("ВЗЛОМ")),
            ElevatedButton(onPressed: () => Navigator.push(context, _anim(const PageTwo())), child: const Text("ДИЗАЙН")),
          ],
        ),
      ),
    );
  }
}
