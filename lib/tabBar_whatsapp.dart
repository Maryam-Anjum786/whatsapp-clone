import 'package:flutter/material.dart';
import 'package:tabbar_tabview/modelclass.dart';

class WhatsApp extends StatefulWidget {
  const WhatsApp({super.key});

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  List<ModelClass> whatsapp = [
    ModelClass(
        name: "Sana",
        lastMsg: "Im home",
        time: "3 min ago",
        circleavatar:
            "https://images.pexels.com/photos/3763188/pexels-photo-3763188.jpeg?auto=compress&cs=tinysrgb&w=1600"),
    ModelClass(
        name: "Ayesha",
        lastMsg: "Alright",
        time: "35 min ago",
        circleavatar:
            "https://images.pexels.com/photos/1914877/pexels-photo-1914877.jpeg?auto=compress&cs=tinysrgb&w=1600&lazy=load"),
    ModelClass(
        name: "Rania",
        lastMsg: "I'll call you later",
        time: "9 min ago",
        circleavatar:
            "https://images.pexels.com/photos/2463027/pexels-photo-2463027.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load"),
    ModelClass(
        name: "Samia",
        lastMsg: "Im home",
        time: "2 min ago",
        circleavatar:
            "https://images.pexels.com/photos/1542085/pexels-photo-1542085.jpeg?auto=compress&cs=tinysrgb&w=1600"),
    ModelClass(
        name: "Umair",
        lastMsg: "Fine",
        time: "40 min ago",
        circleavatar:
            "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1600"),
    ModelClass(
        name: "Sara",
        lastMsg: "OK",
        time: "5:30 PM",
        circleavatar:
            "https://images.pexels.com/photos/2463027/pexels-photo-2463027.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load"),
    ModelClass(
        name: "Sana",
        lastMsg: "Im home",
        time: "6:30 PM",
        circleavatar:
            "https://images.pexels.com/photos/1542085/pexels-photo-1542085.jpeg?auto=compress&cs=tinysrgb&w=1600"),
    ModelClass(
        name: "Anjum",
        lastMsg: "Reached now",
        time: "10 min ago",
        circleavatar:
            "https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&w=1600"),
    ModelClass(
        name: "Ali",
        lastMsg: "Cool",
        time: "2 PM",
        circleavatar:
            "https://images.pexels.com/photos/428364/pexels-photo-428364.jpeg?auto=compress&cs=tinysrgb&w=1600"),
    ModelClass(
        name: "Rania",
        lastMsg: "I'll call you later",
        time: "9 min ago",
        circleavatar:
            "https://images.pexels.com/photos/2463027/pexels-photo-2463027.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load"),
    ModelClass(
        name: "Samia",
        lastMsg: "Im home",
        time: "2 min ago",
        circleavatar:
            "https://images.pexels.com/photos/1542085/pexels-photo-1542085.jpeg?auto=compress&cs=tinysrgb&w=1600"),
    ModelClass(
        name: "Umair",
        lastMsg: "Fine",
        time: "40 min ago",
        circleavatar:
            "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1600"),
    ModelClass(
        name: "Sara",
        lastMsg: "OK",
        time: "5:30 PM",
        circleavatar:
            "https://images.pexels.com/photos/2463027/pexels-photo-2463027.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load"),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'WhatsApp',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.024,
            ),
          ),
          backgroundColor: Colors.teal,
          bottom: const TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 2,
              tabs: [
                Icon(Icons.camera_alt),
                Text('Chats'),
                Text('Status'),
                Text('Calls'),
              ]),
          actions: [
            const Icon(Icons.search),
            SizedBox(
              width: width * 0.016,
            ),
            PopupMenuButton(
                icon: const Icon(Icons.more_vert_rounded),
                itemBuilder: (
                  context,
                ) =>
                    [
                      const PopupMenuItem(
                        value: '1',
                        child: Text('New group'),
                      ),
                      const PopupMenuItem(
                        value: '1',
                        child: Text('Settings'),
                      ),
                      const PopupMenuItem(
                        value: '1',
                        child: Text('Log out'),
                      ),
                    ]),
            SizedBox(
              width: width * 0.025,
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Icon(
              Icons.camera_alt,
              size: height * 0.1,
            ),
            ListView.builder(
                itemCount: whatsapp.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(whatsapp[index].name),
                    subtitle: Text(whatsapp[index].lastMsg.toString()),
                    trailing: Text(whatsapp[index].time),
                    leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage(whatsapp[index].circleavatar),
                    ),
                  );
                }),
            ListView.builder(
                itemCount: 7,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(whatsapp[index].name),
                    subtitle: Text(whatsapp[index].time),
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.teal,
                            width: 3,
                          )),
                      child: CircleAvatar(
                        backgroundImage:
                            NetworkImage(whatsapp[index].circleavatar),
                      ),
                    ),
                  );
                }),
            ListView.builder(
                itemCount: 11,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(whatsapp[index].name),
                    subtitle: Text(index / 2 == 0
                        ? 'You missed an audio call'
                        : 'You missed a video call'),
                    trailing: Icon(
                        index / 2 == 0 ? Icons.call : Icons.video_call_rounded),
                    leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage(whatsapp[index].circleavatar),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
