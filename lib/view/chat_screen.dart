import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/style.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 30,
          itemBuilder: ((context, index) {
            return ListTile(
              title: Text(
                'User ${index + 1}',
                style: boldText,
              ),
              subtitle: const Text('Hi, How do you do?'),
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
              trailing: const Text('01/01/2024'),
            );
          })),
    );
  }
}
