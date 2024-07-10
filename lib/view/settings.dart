import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 1;
    final height = MediaQuery.of(context).size.width * 1;

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Shimmer.fromColors(
          baseColor: Colors.white,
          highlightColor: Colors.grey,
          child: const Text(
            'Settings',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
                SizedBox(
                  width: width / 30,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('UserName'),
                    Text('The only person you sh....'),
                  ],
                ),
                SizedBox(
                  width: width / 30,
                ),
                const FaIcon(
                  size: 30,
                  FontAwesomeIcons.qrcode,
                  color: Colors.teal,
                ),
                SizedBox(
                  width: width / 30,
                ),
                const FaIcon(
                  size: 30,
                  FontAwesomeIcons.circleDown,
                  color: Colors.teal,
                )
              ],
            ),
            const Divider(),
            const ReUseableWidget(
                icon: FontAwesomeIcons.key,
                title: 'Account',
                subtitle: 'Security notification'),
            const ReUseableWidget(
                icon: FontAwesomeIcons.lock,
                title: 'Privacy',
                subtitle: 'Block contacts'),
            const ReUseableWidget(
                icon: FontAwesomeIcons.userTie,
                title: 'Avatar',
                subtitle: 'Create, edit'),
            const ReUseableWidget(
                icon: FontAwesomeIcons.solidCommentDots,
                title: 'Chats',
                subtitle: 'Theme, wallpapers'),
            const ReUseableWidget(
                icon: FontAwesomeIcons.solidBell,
                title: 'Notification',
                subtitle: 'Message'),
            const ReUseableWidget(
                icon: FontAwesomeIcons.database,
                title: 'Stoarage and data',
                subtitle: 'Network usage'),
            const ReUseableWidget(
                icon: FontAwesomeIcons.solidCircleQuestion,
                title: 'Help',
                subtitle: 'Help center'),
            SizedBox(
              height: height / 10,
            ),
            const Text('from'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  FontAwesomeIcons.meta,
                  color: Colors.teal,
                  size: 17,
                ),
                SizedBox(
                  width: width / 40,
                ),
                const Text('Meta')
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ReUseableWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const ReUseableWidget(
      {super.key,
      required this.icon,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: FaIcon(
        icon,
        color: Colors.teal,
      ),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}
