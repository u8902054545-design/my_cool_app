import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String _serverStatus = "Нажми кнопку, чтобы проверить связь с облаком";
  bool _isLoading = false;

  Future<void> checkGas() async {
    setState(() {
      _isLoading = true;
      _serverStatus = "Связываюсь с Google...";
    });

    final url = Uri.parse('https://script.google.com/macros/s/AKfycbwVjRunwBecaienHBWf1iCE9p6v38yX0WpkCl9QsDyNK1x-FmIy9vMm7_GhOe4xW-dU/exec');
    
    try {
      // Отправляем POST запрос
      final response = await http.post(
        url,
        body: jsonEncode({"user": "u8902054545-design"}),
      );

      if (response.statusCode == 302) {
        // GAS часто делает редирект, библиотека http его обработает автоматически в большинстве случаев
      }

      final data = jsonDecode(response.body);
      setState(() {
        _serverStatus = data['message'] ?? "Успешно! Ответ получен.";
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _serverStatus = "Ошибка связи: $e";
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Профиль и Облако"), centerTitle: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blue,
                child: Icon(Icons.cloud_sync, size: 50, color: Colors.white),
              ),
              const SizedBox(height: 30),
              Card(
                elevation: 0,
                color: Theme.of(context).colorScheme.surfaceVariant,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    _serverStatus,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              _isLoading 
                ? const CircularProgressIndicator()
                : FilledButton.icon(
                    onPressed: checkGas,
                    icon: const Icon(Icons.bolt),
                    label: const Text("Запрос к Google Script"),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
