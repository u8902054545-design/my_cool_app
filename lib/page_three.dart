import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Профиль")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              child: Icon(Icons.person, size: 60),
            ),
            const SizedBox(height: 24),
            Text("Разработчик", style: Theme.of(context).textTheme.headlineSmall),
            const Text("ID: u8902054545"),
            const SizedBox(height: 24),
            OutlinedButton.icon(
              onPressed: () {}, 
              icon: const Icon(Icons.logout), 
              label: const Text("Выйти")
            ),
          ],
        ),
      ),
    );
  }
}
