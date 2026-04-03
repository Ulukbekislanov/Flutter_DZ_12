import 'package:flutter/material.dart';


class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(title: Text('Мой профиль')),
        ListTile(title: Text('Уведомление и звуки')),
        ListTile(title: Text('Конфиденциальность')),
        ListTile(title: Text('Настройки чатов')),
        ListTile(title: Text('Папки с чатоми')),
        ListTile(title: Text('Язык')),
      ],
    );
  }
}