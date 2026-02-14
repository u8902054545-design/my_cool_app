import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(title: const Text("CREATIVE SPACE")),
      body: const Center(child: Icon(Icons.brush, size: 100)),
    );
  }
}
