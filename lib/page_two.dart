import 'package:flutter/material.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Расписание слотов")),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: 6,
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemBuilder: (context, index) => Card(
          elevation: 1,
          child: ListTile(
            leading: const Icon(Icons.access_time),
            title: Text("${index + 9}:00 - Слот забронирован"),
            subtitle: const Text("Доступно для записи"),
            trailing: const Icon(Icons.chevron_right),
          ),
        ),
      ),
    );
  }
}
