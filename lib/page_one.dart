import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Google Home"), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text("Рекомендации", style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 16),
          Card(
            elevation: 0,
            color: Theme.of(context).colorScheme.surfaceVariant,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Стиль Material 3 активен", style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  const Text("Приложение теперь использует динамические цвета и закругленные формы Google."),
                  const SizedBox(height: 12),
                  FilledButton(onPressed: () {}, child: const Text("Подробнее")),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
