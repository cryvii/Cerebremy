import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications', style: TextStyle(fontFamily: 'Pacifico')),
        centerTitle: true,
        backgroundColor: Colors.pink[300],
        elevation: 0,
      ),
      backgroundColor: Colors.pink[100],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Push Notifications',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.pink[800],
              ),
            ),
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Icon(Icons.notifications_active, color: Colors.pink[800]),
            title: Text(
              'Turn on Notifications',
              style: TextStyle(fontFamily: 'Montserrat'),
            ),
            trailing: Switch(
              value: true,
              onChanged: (value) {},
              activeColor: Colors.pink[500],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Notification Settings',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.pink[800],
              ),
            ),
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Icon(Icons.notifications_none, color: Colors.pink[800]),
            title: Text(
              'Notification Sound',
              style: TextStyle(fontFamily: 'Montserrat'),
            ),
            trailing: DropdownButton(
              value: 'Default',
              items: [
                DropdownMenuItem(
                  value: 'Default',
                  child: Text('Default', style: TextStyle(fontFamily: 'Montserrat')),
                ),
                DropdownMenuItem(
                  value: 'Sound 1',
                  child: Text('Sound 1', style: TextStyle(fontFamily: 'Montserrat')),
                ),
                DropdownMenuItem(
                  value: 'Sound 2',
                  child: Text('Sound 2', style: TextStyle(fontFamily: 'Montserrat')),
                ),
              ],
              onChanged: (value) {},
              dropdownColor: Colors.pink[100],
              iconEnabledColor: Colors.pink[800],
            ),
          ),
          ListTile(
            leading: Icon(Icons.vibration, color: Colors.pink[800]),
            title: Text(
              'Vibration',
              style: TextStyle(fontFamily: 'Montserrat'),
            ),
            trailing: Switch(
              value: true,
              onChanged: (value) {},
              activeColor: Colors.pink[500],
            ),
          ),
          ListTile(
            leading: Icon(Icons.lightbulb, color: Colors.pink[800]),
            title: Text(
              'LED Light',
              style: TextStyle(fontFamily: 'Montserrat'),
            ),
            trailing: Switch(
              value: true,
              onChanged: (value) {},
              activeColor: Colors.pink[500],
            ),
          ),
        ],
      ),
    );
  }
}
