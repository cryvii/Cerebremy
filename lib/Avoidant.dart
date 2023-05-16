// import 'package:flutter/material.dart';

// class CommunicationChallengesPage extends StatefulWidget {
//   @override
//   _CommunicationChallengesPageState createState() =>
//       _CommunicationChallengesPageState();
// }

// class _CommunicationChallengesPageState extends State<CommunicationChallengesPage> {
//   List<Challenge> challenges = [
//     Challenge(
//       title: 'Strike up a conversation with a stranger',
//       description:
//           'Approach someone you don\'t know and start a conversation. It could be a person in line at the store, someone sitting next to you on the bus, or a coworker you\'ve never talked to before.',
//       tip:
//           'Try to find common ground or ask them questions about themselves to keep the conversation going.',
//     ),
//     Challenge(
//       title: 'Give a compliment to a stranger',
//       description:
//           'Find an opportunity to compliment someone you don\'t know. It could be their outfit, their smile, or something you admire about them.',
//       tip: 'Be sincere and genuine in your compliment.',
//     ),
//     // Add more challenges here
//     // ...
//     Challenge(
//       title: 'Organize a group activity',
//       description:
//           'Plan and organize a group activity with your friends or colleagues. It could be a game night, a picnic, or a team-building event.',
//       tip: 'Consider everyone\'s interests and preferences when choosing the activity.',
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Communication Challenges'),
//       ),
//       body: ListView.builder(
//         itemCount: challenges.length,
//         itemBuilder: (context, index) {
//           return ChallengeTile(
//             challenge: challenges[index],
//             onCompleted: () {
//               setState(() {
//                 challenges[index].completed = true;
//               });
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// class Challenge {
//   final String title;
//   final String description;
//   final String tip;
//   bool completed;

//   Challenge({
//     required this.title,
//     required this.description,
//     required this.tip,
//     this.completed = false,
//   });
// }

// class ChallengeTile extends StatelessWidget {
//   final Challenge challenge;
//   final VoidCallback onCompleted;

//   const ChallengeTile({
//     required this.challenge,
//     required this.onCompleted,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 4,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: ListTile(
//         title: Text(
//           challenge.title,
//           style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         subtitle: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               challenge.description,
//               style: TextStyle(fontSize: 16),
//             ),
//             SizedBox(height: 8),
//             Text(
//               'Tip: ${challenge.tip}',
//               style: TextStyle(
//                 fontStyle: FontStyle.italic,
//                 fontSize: 14,
//               ),
//             ),
//           ],
//         ),
//         trailing: challenge.completed
//             ? Icon(
//                 Icons.check_circle,
//                 color: Colors.green,
//                 size: 30,
//               )
//             : ElevatedButton(
//                 onPressed: onCompleted,
//                 child: Text(
//                   'Complete',
//                   style: TextStyle(fontSize: 14),
//                 ),
//                 style: ButtonStyle(
//                   backgroundColor: MaterialStateProperty.all(Colors.pink),
//                   padding: MaterialStateProperty.all(
//                     EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                   ),
//                   shape: MaterialStateProperty.all(
//                     RoundedRectangleBorder(
//                       borderRadius:
//                       BorderRadius.circular(4),
//                     ),
//                   ),
//                 ),
//               ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     title: 'Communication Challenges',
//     home: CommunicationChallengesPage(),
//   ));
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Communication Challenges',
    home: CommunicationChallengesPage(),
  ));
}

class CommunicationChallengesPage extends StatefulWidget {
  @override
  _CommunicationChallengesPageState createState() =>
      _CommunicationChallengesPageState();
}

class _CommunicationChallengesPageState
    extends State<CommunicationChallengesPage> {
  List<Challenge> challenges = [
    Challenge(
      title: 'Strike up a conversation with a stranger',
      description:
          'Approach someone you don\'t know and start a conversation. It could be a person in line at the store, someone sitting next to you on the bus, or a coworker you\'ve never talked to before.',
      tip:
          'Try to find common ground or ask them questions about themselves to keep the conversation going.',
    ),
    Challenge(
      title: 'Give a compliment to a stranger',
      description:
          'Find an opportunity to compliment someone you don\'t know. It could be their outfit, their smile, or something you admire about them.',
      tip: 'Be sincere and genuine in your compliment.',
    ),
    // Add more challenges here
    // ...
    Challenge(
      title: 'Organize a group activity',
      description:
          'Plan and organize a group activity with your friends or colleagues. It could be a game night, a picnic, or a team-building event.',
      tip: 'Consider everyone\'s interests and preferences when choosing the activity.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Communication Challenges'),
      ),
      body: ListView.builder(
        itemCount: challenges.length,
        itemBuilder: (context, index) {
          return ChallengeTile(
            challenge: challenges[index],
            onCompleted: () {
              setState(() {
                challenges[index].completed = true;
              });
            },
          );
        },
      ),
    );
  }
}

class Challenge {
  final String title;
  final String description;
  final String tip;
  bool completed;

  Challenge({
    required this.title,
    required this.description,
    required this.tip,
    this.completed = false,
  });
}

class ChallengeTile extends StatelessWidget {
  final Challenge challenge;
  final VoidCallback onCompleted;

  const ChallengeTile({
    required this.challenge,
    required this.onCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        title: Text(
          challenge.title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              challenge.description,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Tip: ${challenge.tip}',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 14,
              ),
            ),
          ],
        ),
        trailing: challenge.completed
            ? Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 30,
              )
            : ElevatedButton(
                onPressed: onCompleted,
                child: Text(
                  'I did it !',
                  style: TextStyle(fontSize: 14),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
      ),
    );
  }
}
