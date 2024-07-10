import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/components/button.dart';

class UpdateScreen extends StatefulWidget {
  const UpdateScreen({super.key});

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 1;
    final height = MediaQuery.of(context).size.width * 1;

    return Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: height / 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const Text(
                  'Status',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  width: width / 1.5,
                ),
                const Icon(Icons.more_vert_outlined)
              ],
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
              title: Text('My status'),
              subtitle: Text('Tab to update status update'),
            ),
            const Divider(),
            SizedBox(
              height: height / 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const Text(
                  'Channels',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  width: width / 1.6,
                ),
                const Icon(Icons.more_vert_outlined)
              ],
            ),
            Text(
              // textAlign: TextAlign.left,
              'Stay updated on the topics that matter to you. Find\nchannels to follow below',
              style: TextStyle(color: Colors.grey.shade500),
            ),
            SizedBox(
              height: height / 20,
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10, // Adjust this according to your requirement
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 0.4),
                      color: Colors.white,
                    ),
                    width: 120,
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/profile.jpg'),
                        ),
                        Text('Channel ${index + 1}'),
                        Container(
                          height: 20,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(24)),
                          child: const Center(
                            child: Text(
                              'Follow',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: height / 20,
            ),
            const Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: RoundButton(title: 'Explore more'))
                    ],
                  ),
                ))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.teal,
          onPressed: () {},
          child: const Center(
            child: Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
          ),
        ));
  }
}
