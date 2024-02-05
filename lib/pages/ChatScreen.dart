import 'package:flutter/material.dart';
import 'package:whatsap_clone/models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (BuildContext context, index) {
          return Column(
            children: [
              ListTile(
                  leading: CircleAvatar(
                    foregroundColor: Theme.of(context).primaryColor,
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage(dummyData[index].avatarurl),
                  ),
                  title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          dummyData[index].name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ]),
                  subtitle: Container(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text(
                      dummyData[index].message,
                      style: TextStyle(
                          color: const Color.fromARGB(206, 51, 49, 49)),
                    ),
                  ))
            ],
          );
        });
  }
}
