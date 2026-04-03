import 'package:flutter/material.dart';
import 'package:flutter_application_10/main.dart';

class AppDrawer extends StatelessWidget {
  final Function(int) onDestinationSelected;
  const AppDrawer({super.key, required this.onDestinationSelected});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    const telegramBlue = Color(0xFF2AABEE);

    return Drawer(
      child: Column(
        children: [
          // Шапка профиля
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(color: telegramBlue),
            currentAccountPicture: const CircleAvatar(
              backgroundColor: Colors.white,
              // ПУТЬ К ТВОЕМУ ФОТО:
              backgroundImage: AssetImage('images/image.png'), 
            ),
            accountName: const Text('Исланов Улукбек', 
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            accountEmail: const Text('+996 708 34 51 14'),
            otherAccountsPictures: [
              IconButton(
                icon: Icon(isDark ? Icons.wb_sunny : Icons.nightlight_round, color: Colors.white),
                onPressed: () {
                  themeNotifier.value = isDark ? ThemeMode.light : ThemeMode.dark;
                },
              ),
            ],
          ),
          // Пункты меню
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                _buildItem(Icons.chat, 'Чаты', () => onDestinationSelected(0)),
                _buildItem(Icons.call, 'Звонки', () => onDestinationSelected(1)),
                _buildItem(Icons.person, 'Контакты', () => onDestinationSelected(2)),
                _buildItem(Icons.settings, 'Настройки', () => onDestinationSelected(3)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItem(IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap,
    );
  }
}