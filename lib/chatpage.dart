








































import 'package:flutter/material.dart';
import 'package:whatsappclone/chatTile.dart';
import 'package:whatsappclone/models/chatmodel.dart';

class ChatPage extends StatelessWidget {
   ChatPage({super.key});
  List<Chat> chatlist = [
    Chat(
        avathar: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Zayn_Wiki_%28cropped%29.jpg/800px-Zayn_Wiki_%28cropped%29.jpg ',
        name: 'Siyad',
        isGroup: false,
        updatedAt: '7.36 pm',
        message: 'Hi da',
      ),
        Chat(
        avathar: 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png',
        name: 'Fathima',
        isGroup: false,
        updatedAt: '4.58 pm',
        message: 'Hey',
        ),

        Chat(
        avathar: 'https://cdn6.aptoide.com/imgs/1/2/2/1221bc0bdd2354b42b293317ff2adbcf_icon.png',
        name: 'Red Devils Kerala',
        isGroup: true,
        updatedAt: '1.21 am',
        message: 'Score.?',
        ),
        Chat(
        avathar: 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png',
        name: 'Aadil',
        isGroup: false,
        updatedAt: '12.11 pm',
        message: 'Hello',
       ),

        Chat(
        avathar: 'https://pbs.twimg.com/profile_images/488721048225841152/kdNAUmzf_400x400.png',
        name: 'BAABTRA',
        isGroup: true,
        updatedAt: '8.29 am',
        message: 'Next week schedule',
      ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chatlist.length,
        itemBuilder: (BuildContext context,int index) {
          return ChatTile(userdata: chatlist[index]);
          
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: () { },
      child: Icon(Icons.message),
      ),
    );
  }
}    
