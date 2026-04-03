import 'package:flutter/material.dart';
class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  final List<Map<String, String>> contacts = const [
    {'name': 'Аяна', 'phone': '+996 700 12 58 94'},
    {'name': 'Мария', 'phone': '+996 703 39 66 78'},
    {'name': 'Мама', 'phone': '+996 708 86 07 13'},
    {'name': 'Папа', 'phone': '+996 705 39 26 07'},
    {'name': 'Брат', 'phone': '+996 703 39 49 98'},
    {'name': 'Сестра', 'phone': '+996 700 92 52 36'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: contacts.length,
      itemBuilder: (context, index) {
        final contact = contacts[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.lightBlue.shade200,
            child: Text(contact['name']![0], style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
          ),
          title: Text(contact['name']!),
          subtitle: Text(contact['phone']!),
        );
      },
    );
  }
}