import 'package:flutter/material.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key});

  final List<Map<String, String>> calls = const [
    {'name': 'Мама', 'date': 'Сегодня', 'type': 'incoming'},
    {'name': 'Алексей', 'date': 'Вчера', 'type': 'outgoing'},
    {'name': 'Мария', 'date': '20 мая', 'type': 'incoming'},
    {'name': 'Папа', 'date': '18 мая', 'type': 'outgoing'},
    {'name': 'Брат', 'date': '15 мая', 'type': 'incoming'},
    {'name': 'Сестра', 'date': '12 мая', 'type': 'outgoing'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: calls.length,
      itemBuilder: (context, index) {
        final call = calls[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.lightBlue.shade200,
            child: Text(call['name']![0], style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
          ),
          title: Text(call['name']!),
          subtitle: Text(call['date']!),
          trailing: Icon(
            call['type'] == 'incoming' ? Icons.call_received : Icons.call_made,
            color: Colors.green,
          ),
        );
      },
    );
  }
}