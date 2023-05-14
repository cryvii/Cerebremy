import 'package:flutter/material.dart';
import 'package:testest/ChatScreen.dart';

class Chatter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
        backgroundColor: Color.fromARGB(179, 12, 12, 111),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 9, // replace with actual number of chats
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage('assets/avatar.png'), // replace with actual image
              ),
              title: Text('John Doe'), // replace with actual name
              subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
              trailing: Text('10:30 AM'), // replace with actual time
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=> ChatScreen()));
              },
            ),
          );
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.message),
          backgroundColor: Color.fromARGB(179, 12, 12, 111),
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context)=> ChatScreen()));
          },
        
      ),
    );
  }
}
