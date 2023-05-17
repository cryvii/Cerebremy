// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

// void main() {
//   runApp(MoodTrackerApp());
// }

// class MoodTrackerApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Mood Tracker',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MoodTrackerPage(),
//     );
//   }
// }

// class MoodTrackerPage extends StatefulWidget {
//   @override
//   _MoodTrackerPageState createState() => _MoodTrackerPageState();
// }

// class _MoodTrackerPageState extends State<MoodTrackerPage> {
//   List<MoodEntry> moodEntries = [];

//   void addMoodEntry(Mood mood) {
//     setState(() {
//       moodEntries.add(
//         MoodEntry(
//           mood: mood,
//           date: DateTime.now(),
//         ),
//       );
//     });
//   }

//   Widget buildMoodEntry(MoodEntry moodEntry) {
//     return ListTile(
//       leading: CircleAvatar(
//         backgroundColor: getColorForMood(moodEntry.mood),
//       ),
//       title: Text(getMoodText(moodEntry.mood)),
//       subtitle: Text(formatDate(moodEntry.date)),
//     );
//   }

//   Color getColorForMood(Mood mood) {
//     switch (mood) {
//       case Mood.happy:
//         return Colors.yellow;
//       case Mood.sad:
//         return Colors.blue;
//       case Mood.excited:
//         return Colors.red;
//       case Mood.angry:
//         return Colors.orange;
//       default:
//         return Colors.grey;
//     }
//   }

//   String getMoodText(Mood mood) {
//     switch (mood) {
//       case Mood.happy:
//         return 'Happy';
//       case Mood.sad:
//         return 'Sad';
//       case Mood.excited:
//         return 'Excited';
//       case Mood.angry:
//         return 'Angry';
//       default:
//         return 'Unknown';
//     }
//   }

//   String formatDate(DateTime date) {
//     return '${date.day}/${date.month}/${date.year} ${date.hour}:${date.minute}';
//   }

//   List<ChartData> getChartData() {
//     return moodEntries
//         .map((entry) => ChartData(entry.date, entry.mood.index))
//         .toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Mood Tracker'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: moodEntries.length,
//               itemBuilder: (context, index) {
//                 return buildMoodEntry(moodEntries[index]);
//               },
//             ),
//           ),
//           Container(
//             height: 200,
//             child: SfCartesianChart(
//               primaryXAxis: DateTimeAxis(),
//               series: <ChartSeries>[
//                 LineSeries<ChartData, DateTime>(
//                   dataSource: getChartData(),
//                   xValueMapper: (ChartData data, _) => data.date,
//                   yValueMapper: (ChartData data, _) => data.mood,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           showModalBottomSheet(
//             context: context,
//             builder: (BuildContext context) {
//               return Container(
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     ListTile(
//                       leading: Icon(Icons.sentiment_very_satisfied),
//                       title: Text('Happy'),
//                       onTap: () {
//                         addMoodEntry(Mood.happy);
//                         Navigator.pop(context);
//                       },
//                     ),
//                     ListTile(
//                       leading: Icon(Icons.sentiment_dissatisfied),
//                       title: Text('Sad'),
//                       onTap: () {
//                         addMoodEntry(Mood.sad);
//                         Navigator.pop(context);
//                       },
//                     ),
//                     ListTile(
//                       leading: Icon(Icons.sentiment_satisfied),
//                       title: Text('Excited'),
//                       onTap: () {
//                         addMoodEntry(Mood.excited);
//                         Navigator.pop(context);
//                       },
//                     ),
//                     ListTile(
//                       leading: Icon(Icons.sentiment_neutral),
//                       title: Text('Angry'),
//                       onTap: () {
//                         addMoodEntry(Mood.angry);
//                         Navigator.pop(context);
//                       },
//                     ),
//                   ],
//                 ),
//               );
//             },
//           );
//         },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }

// enum Mood {
//   happy,
//   sad,
//   excited,
//   angry,
// }

// class MoodEntry {
//   final Mood mood;
//   final DateTime date;

//   MoodEntry({
//     required this.mood,
//     required this.date,
//   });
// }

// class ChartData {
//   final DateTime date;
//   final int mood;

//   ChartData(this.date, this.mood);
// }


import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:testest/Chatter.dart';

void main() {
  runApp(MoodTrackerApp());
}

class MoodTrackerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mood Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MoodTrackerPage(),
    );
  }
}

class MoodTrackerPage extends StatefulWidget {
  @override
  _MoodTrackerPageState createState() => _MoodTrackerPageState();
}

class _MoodTrackerPageState extends State<MoodTrackerPage> {
  List<MoodEntry> moodEntries = [];

  void addMoodEntry(Mood mood) {
    setState(() {
      moodEntries.add(
        MoodEntry(
          mood: mood,
          date: DateTime.now(),
        ),
      );
    });
  }

  Widget buildMoodEntry(MoodEntry moodEntry) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: getColorForMood(moodEntry.mood),
      ),
      title: Text(getMoodText(moodEntry.mood)),
      subtitle: Text(formatDate(moodEntry.date)),
    );
  }

  Color getColorForMood(Mood mood) {
    switch (mood) {
      case Mood.happy:
        return Colors.yellow;
      case Mood.sad:
        return Colors.blue;
      case Mood.excited:
        return Colors.red;
      case Mood.angry:
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }

  String getMoodText(Mood mood) {
    switch (mood) {
      case Mood.happy:
        return 'Happy';
      case Mood.sad:
        return 'Sad';
      case Mood.excited:
        return 'Excited';
      case Mood.angry:
        return 'Angry';
      default:
        return 'Unknown';
    }
  }

  String formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year} ${date.hour}:${date.minute}';
  }

  List<ChartData> getChartData() {
    return moodEntries
        .map((entry) => ChartData(entry.date, entry.mood.index))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mood Tracker'),
        backgroundColor: Color.fromARGB(236, 140, 227, 78),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: moodEntries.length,
              itemBuilder: (context, index) {
                return buildMoodEntry(moodEntries[index]);
              },
            ),
          ),
          Container(
            height: 200,
            child: SfCartesianChart(
              primaryXAxis: DateTimeAxis(),
              series: <ChartSeries>[
                LineSeries<ChartData, DateTime>(
                  dataSource: getChartData(),
                  xValueMapper: (ChartData data, _) => data.date,
                  yValueMapper: (ChartData data, _) => data.mood,
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(236, 140, 227, 78),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      leading: Icon(Icons.sentiment_very_satisfied),
                      title: Text('Happy'),
                      onTap: () {
                        addMoodEntry(Mood.happy);
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.sentiment_dissatisfied),
                      title: Text('Sad'),
                      onTap: () {
                        addMoodEntry(Mood.sad);
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.sentiment_satisfied),
                      title: Text('Excited'),
                      onTap: () {
                        addMoodEntry(Mood.excited);
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.sentiment_neutral),
                      title: Text('Angry'),
                      onTap: () {
                        addMoodEntry(Mood.angry);
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

enum Mood {
  happy,
  sad,
  excited,
  angry,
}

class MoodEntry {
  final Mood mood;
  final DateTime date;

  MoodEntry({
    required this.mood,
    required this.date,
  });
}

class ChartData {
  final DateTime date;
  final int mood;

  ChartData(this.date, this.mood);
}
