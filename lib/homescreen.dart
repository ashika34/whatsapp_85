import 'package:flutter/material.dart';
import 'package:whatsappclone/callScreen.dart';
import 'package:whatsappclone/chatpage.dart';
import 'package:whatsappclone/chattile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> 
with SingleTickerProviderStateMixin

{
  late TabController _controller;
 @override 
 @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, initialIndex:1,vsync:this);
    
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade800,
        
        title: Text('Whatsapp',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
        actions: [
          IconButton(onPressed: () {
            
          }, icon: Icon(Icons.camera_alt),color: Colors.white,),
          SizedBox(
            width: 10
          ),
          IconButton(onPressed: () {
            
          }, icon: Icon(Icons.search),color: Colors.white,),
          SizedBox(
            width: 10,
          ),

        PopupMenuButton (color: Colors.white,
          itemBuilder: (BuildContext context) {
            return[
              PopupMenuItem(child: Text('New group')),
              PopupMenuItem(child: Text('New Broadcast')),
              PopupMenuItem(child: Text('Linked devices')),
              PopupMenuItem(child: Text('Starred messages')),
              PopupMenuItem(child: Text('Payments')),
              PopupMenuItem(child: Text('Settings')),
              ];
          }
          ),
          SizedBox(
            height: 5
          ),
          ],
bottom:TabBar(
            controller:_controller,
            labelColor: Colors.white, 
            
            tabs:[
              Tab(
                icon: Icon(Icons.people,color: Colors.white)
                ),
                Tab(
                  text: 'chats',
                   ),
                Tab(
                text: ' Status',
                ),
                Tab(
                  text: 'Calls',
                )
            ],
             ),
        ),
        body: TabBarView(
          controller: _controller,
          children:[ 
          Text('people'),
          ChatPage(),
          Text('Status'),
          CallScreen(),
          ] ),
        );
         }
}




