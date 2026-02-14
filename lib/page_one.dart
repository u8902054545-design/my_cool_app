import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TERMINAL LOG")),
      body: const Center(child: Text("Загрузка данных...", style: TextStyle(color: Colors.green, fontFamily: 'monospace'))),
    );
  }
}
