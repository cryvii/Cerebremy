import 'package:flutter/material.dart';
import 'package:testest/HomePageDashBoard.dart';
import 'package:testest/main.dart';
import 'package:testest/notifications.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Color.fromARGB(185, 85, 85, 100),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Text(
              'Account',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Divider(thickness: 1),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=> NotificationsScreen()));

            },
          ),
          Divider(thickness: 1),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text('Delete my Data'),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Delete Data'),
                    content: Text('Are you sure you want to delete all your data? This action cannot be undone.'),
                    actions: <Widget>[
                      TextButton(
                        child: Text('Cancel'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      TextButton(
                        child: Text('Delete'),
                        onPressed: () {
                          // Add code here to delete the user's data and navigate back to the login screen
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> MyApp()));

                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
          Divider(thickness: 1),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Text(
              'Help and Info',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Divider(thickness: 1),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help'),
            onTap: () {},
          ),
          Divider(thickness: 1),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            onTap: () {},
          ),
          Divider(thickness: 1),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Text(
              'Legal',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Divider(thickness: 1),
          ListTile(
            leading: Icon(Icons.privacy_tip),
            title: Text('Privacy Policy'),
            onTap: () {},
          ),
          Divider(thickness: 1),
          ListTile(
            leading: Icon(Icons.article),
            title: Text('Terms and Conditions'),
            onTap: () {},
          ),
          Divider(thickness: 1),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
