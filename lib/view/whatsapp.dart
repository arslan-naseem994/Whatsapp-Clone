import 'package:flutter/material.dart';
import 'package:whatsapp_clone/view/calls.dart';
import 'package:whatsapp_clone/view/camera.dart';
import 'package:whatsapp_clone/view/chat_screen.dart';
import 'package:whatsapp_clone/view/groups.dart';
import 'package:whatsapp_clone/view/settings.dart';
import 'package:whatsapp_clone/view/update.dart';
import 'package:shimmer/shimmer.dart';

class WhatsAppScreen extends StatefulWidget {
  const WhatsAppScreen({super.key});

  @override
  State<WhatsAppScreen> createState() => _WhatsAppScreenState();
}

class _WhatsAppScreenState extends State<WhatsAppScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Shimmer.fromColors(
            baseColor: Colors.white,
            highlightColor: Colors.grey,
            child: const Text(
              'Whatsapp',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: [
            const Icon(
              Icons.search,
              color: Colors.white,
              size: 25,
            ),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
                iconColor: Colors.white,
                onSelected: (value) {
                  if (value == 'value2') {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const SettingScreen())));
                  }
                  if (value == 'value1') {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const GroupsScreen())));
                  }
                },
                itemBuilder: ((context) {
                  return [
                    const PopupMenuItem(value: 'value1', child: Text('Group')),
                    const PopupMenuItem(value: 'value2', child: Text('Setting'))
                  ];
                })),
          ],
          bottom: const TabBar(
              indicatorColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.tab,
              dividerColor: Colors.greenAccent,
              tabs: [
                Tab(
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  child: Text(
                    'Chats',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    'Updates',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    'Calls',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ]),
        ),
        body: const TabBarView(children: [
          CameraScreen(),
          ChatScreen(),
          UpdateScreen(),
          CallScreen(),
        ]),
      ),
    );
  }
}
