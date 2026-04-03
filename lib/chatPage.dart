import 'package:flutter/material.dart';


class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  final List<Map<String, String>> chats = const [
    {'name': 'Аяна', 'message': 'Привет! Как дела?', 'time': '12:30'},
    {'name': 'Geeks 04-Flutter07022026', 'message': 'Новое задание 👨‍💻', 'time': '11:15'},
    {'name': 'Мама', 'message': 'Позвони мне', 'time': '10:02'},
    {'name': 'Брат', 'message': 'Где ты?', 'time': 'Пн'},
    {'name': 'Друзья', 'message': 'Вечером встретимся?', 'time': 'Сб'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        final chat = chats[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.lightBlue.shade200,
            child: Text(chat['name']![0], style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
          ),
          title: Text(chat['name']!, style: const TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(chat['message']!),
          trailing: Text(chat['time']!, style: const TextStyle(color: Color.fromARGB(255, 158, 158, 158))),
        );
      },
    );
  }
}