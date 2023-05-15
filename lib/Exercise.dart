// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// class ExercisePage extends StatefulWidget {
//   const ExercisePage({Key? key}) : super(key: key);
//
//   @override
//   _ExercisePageState createState() => _ExercisePageState();
// }
//
// class _ExercisePageState extends State<ExercisePage> {
//   final String _apiUrl =
//       'https://wger.de/api/v2/exercise/?language=2&limit=10&status=2';
//
//   late List<dynamic> _exercises;
//
//   @override
//   void initState() {
//     super.initState();
//     _fetchExercises();
//   }
//
//   Future<void> _fetchExercises() async {
//     final response = await http.get(Uri.parse(_apiUrl));
//     if (response.statusCode == 200) {
//       final decodedResponse = jsonDecode(response.body);
//       setState(() {
//         _exercises = decodedResponse['results'];
//       });
//     } else {
//       throw Exception('Failed to load exercises');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Icon(Icons.directions_run, color: Colors.black),
//             SizedBox(width: 10),
//             Text('Exercises', style:
//             TextStyle(color: Colors.black))
//           ],
//         ),
//
//         backgroundColor: Colors.blue[50],
//         iconTheme: IconThemeData(
//           color: Colors.black,
//         ),
//       ),
//       // appBar: AppBar(
//       //   title: const Text('Recommended Exercises'),
//       //   backgroundColor: Color.fromARGB(229, 19, 222, 39),
//       // ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               'Here are some recommended exercises:',
//               style: Theme.of(context).textTheme.headline6,
//             ),
//             const SizedBox(height: 16.0),
//             if (_exercises.isNotEmpty)
//               Expanded(
//                 child: ListView.builder(
//                   itemCount: _exercises.length,
//                   itemBuilder: (context, index) {
//                     final exercise = _exercises[index];
//                     return Card(
//                       child: ListTile(
//                         title: Text(exercise['name']),
//                         subtitle: Text(exercise['description']),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             if (_exercises.isEmpty)
//               const Text('No exercises found'),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:cached_network_image/cached_network_image.dart';
//
// class Exercise {
// final int id;
// final String name;
// final String imageUrl;
// final String description;
//
// Exercise({required this.id, required this.name, required this.imageUrl, required this.description});
// }
//
// class ExercisePage extends StatefulWidget {
//   @override
//   _ExercisePageState createState() => _ExercisePageState();
// }
//
// class _ExercisePageState extends State<ExercisePage> {
//   late Future<List<Exercise>> _exercisesFuture;
//
//   @override
//   void initState() {
//     super.initState();
//     _exercisesFuture = fetchExercises();
//   }
//
//   Future<List<Exercise>> fetchExercises() async {
//     final response = await http.get(Uri.parse('https://wger.de/api/v2/exercise/?language=2'));
//
//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body);
//       final exercises = data['results'] as List<dynamic>;
//       return exercises
//           .map((exercise) => Exercise(
//         id: exercise['id'],
//         name: exercise['name'],
//         imageUrl: exercise['images'][0]['image'],
//         description: exercise['description'],
//       ))
//           .toList();
//     } else {
//       throw Exception('Failed to fetch exercises');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Exercise App'),
//       ),
//       body: FutureBuilder<List<Exercise>>(
//         future: _exercisesFuture,
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             final exercises = snapshot.data!;
//             return GridView.builder(
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 childAspectRatio: 1,
//               ),
//               itemCount: exercises.length,
//               itemBuilder: (context, index) {
//                 final exercise = exercises[index];
//                 return GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => ExerciseDetailPage(exercise: exercise),
//                       ),
//                     );
//                   },
//                   child: Card(
//                     child: Column(
//                       children: [
//                         Expanded(
//                           child: CachedNetworkImage(
//                             imageUrl: exercise.imageUrl,
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Text(
//                             exercise.name,
//                             style: TextStyle(fontSize: 16),
//                             textAlign: TextAlign.center,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             );
//           } else if (snapshot.hasError) {
//             return Center(
//               child: Text('Failed to load exercises'),
//             );
//           } else {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//         },
//       ),
//     );
//   }
// }
//
//
// class ExerciseDetailPage extends StatelessWidget {
//   final Exercise exercise;
//
//   const ExerciseDetailPage({required this.exercise});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(exercise.name),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               alignment: Alignment.center,
//               child: CachedNetworkImage(
//                 imageUrl: exercise.imageUrl,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             SizedBox(height: 16.0),
//             Text(
//               'Description:',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 8.0),
//             Text(
//               exercise.description,
//               style: TextStyle(fontSize: 16),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Exercise App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: ExercisePage(),
//     );
//   }
// }
//

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Exercise {
  final int id;
  final String name;
  final String imageUrl;
  final String description;

  Exercise({required this.id, required this.name, required this.imageUrl, required this.description});
}

class ExerciseDetailPage extends StatelessWidget {
  final Exercise exercise;

  ExerciseDetailPage({required this.exercise});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(exercise.name),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                exercise.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Description:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              exercise.description,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class ExercisePage extends StatefulWidget {
  @override
  _ExercisePageState createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {
  late Future<List<Exercise>> _exercisesFuture;

  @override
  void initState() {
    super.initState();
    _exercisesFuture = fetchExercises();
  }

  Future<List<Exercise>> fetchExercises() async {
    await Future.delayed(Duration(seconds: 1)); // Simulating a delay for API call

    List<Exercise> exercises = [
    Exercise(
      id: 1,
      name: "Squats",
      imageUrl: "exercise/squat.png",
      description: "1. Stand with your feet shoulder-width apart.\n"
          "2. Lower your body as if sitting back into a chair, keeping your chest upright and your knees over your toes.\n"
          "3. Push through your heels to return to the starting position.",
    ),
    Exercise(
    id: 2,
    name: "Lunges",
    imageUrl: "exercise/lunges.jpg",
    description: "1. Start by standing with your feet hip-width apart.\n"
    "2. Take a big step forward with your right leg and lower your body into a lunge position.\n"
    "3. Push off with your right foot and return to the starting position.\n"
    "4. Repeat with the left leg.",
    ),
    Exercise(
    id: 3,
    name: "Pushups",
    imageUrl: "exercise/pushup.png",
    description: "1. Start in a high plank position with your hands slightly wider than shoulder-width apart.\n"
    "2. Lower your body by bending your elbows until your chest nearly touches the floor.\n"
    "3. Push through your palms to straighten your arms and return to the starting position.",
    ),
    Exercise(
    id: 4,
    name: "Crunches",
    imageUrl: "exercise/crunches.png",
    description: "1. Lie on your back with your knees bent and feet flat on the floor.\n"
    "2. Place your hands behind your head or cross them over your chest.\n"
    "3. Lift your upper body off the floor by contracting your abdominal muscles.\n"
    "4. Lower back down to the starting position.",
    ),
    Exercise(
    id: 5,
    name: "Arm Circles",
    imageUrl: "exercise/arm.png",
    description: "1. Stand with your feet shoulder-width apart and extend your arms out to the sides.\n"
    "2. Make small circles with your arms, gradually increasing the size.\n"
    "3. After a few seconds, reverse the direction of the circles.\n"
    "4. Continue for the desired number of repetitions.",
    ),
    Exercise(
    id: 6,
    name: "Jumping Jacks",
    imageUrl: "exercise/jump.png",
    description: "1. Start with your feet together and arms at your sides.\n"
    "2. Jump, spreading your feet wider than shoulder-width apart and raising your arms above your head.\n"
    "3. Jump again, returning to the starting position.\n"
    "4. Repeat for the desired number of repetitions.",
    ),
    Exercise(
    id: 7,
    name: "Burpees",
    imageUrl: "exercise/burp.png",
    description: "1. Start in a standing position.\n"
    "2. Squat down and place your hands on the floor in front of you.\n"
    "3. Jump your feet back, landing in a push-up position.\n"
    "4. Perform a push-up.\n"
    "5. Jump your feet back towards your hands.\n"
    "6. Jump explosively into the air, reaching your hands overhead.\n"
    "7. Land softly and repeat for the desired number of repetitions.",
    ),
    Exercise(
    id: 8,
    name: "Child's Pose",
    imageUrl: "exercise/child.png",
    description: "1. Start on your hands and knees with your knees wider than hip-width apart.\n"
    "2. Sit your hips back towards your heels and reach your arms forward.\n"
    "3. Relax and breathe deeply in this position.\n"
    "4. Hold for the desired amount of time.",
    ),
    Exercise(
    id: 9,
    name: "Bridge",
    imageUrl: "exercise/bridge.png",
    description: "1. Lie on your back with your knees bent and feet flat on the floor.\n"
    "2. Lift your hips off the floor, squeezing your glutes and engaging your core.\n"
    "3. Hold for a few seconds, then lower your hips back down to the starting position.\n"
    "4. Repeat for the desired number of repetitions.",
    ),
    Exercise(
    id: 10,
    name: "Planks",
    imageUrl: "exercise/planks.jpg",
    description: "1. Start in a push-up position with your hands directly under your shoulders.\n"
    "2. Engage your core and keep your body in a straight line from head to heels.\n"
    "3. Hold this position for the desired amount of time.\n"
    "4. Remember to breathe steadily throughout the exercise.",
    ),
    Exercise(
    id: 11,
    name: "Downward Dog",
    imageUrl: "exercise/dog.png",
    description: "1. Start on your hands and knees with your hands slightly in front of your shoulders.\n"
    "2. Lift your knees off the floor, straighten your legs, and lift your hips towards the ceiling.\n"
    "3. Press your hands into the ground and lengthen your spine.\n"
    "4. Hold this position, feeling a stretch in your hamstrings and shoulders.\n"
    "5. Repeat for the desired amount of time.",
    ),
    Exercise(
    id: 12,
    name: "Skipping",
    imageUrl: "exercise/skipping.png",
    description: "1. Stand with your feet hip-width apart and hold your arms out to your sides.\n"
    "2. Jump off the ground, bringing your knees up towards your chest.\n"
    "3. Land softly on the balls of your feet, and immediately jump again.\n"
    "4. Repeat for the desired number of repetitions.",
    ),
    Exercise(
    id: 13,
      name: "Mountain Climbers",
      imageUrl: "exercise/climb.png",
      description: "1. Start in a high plank position with your hands directly under your shoulders.\n"
          "2. Bring one knee towards your chest, then quickly switch and bring the other knee towards your chest.\n"
          "3. Continue alternating knees in a running motion, keeping your core engaged and your back flat.\n"
          "4. Repeat for the desired number of repetitions.",
    ),
      Exercise(
        id: 14,
        name: "Skater Hops",
        imageUrl: "exercise/hops.png",
        description: "1. Start by standing with your feet shoulder-width apart.\n"
            "2. Jump to the right, landing on your right foot with your left foot behind your right ankle.\n"
            "3. Quickly jump to the left, landing on your left foot with your right foot behind your left ankle.\n"
            "4. Continue jumping side to side, keeping a steady rhythm.\n"
            "5. Repeat for the desired number of repetitions.",
      ),
      Exercise(
        id: 15,
        name: "Donkey Kicks",
        imageUrl: "exercise/kicks.jpg",
        description: "1. Start on your hands and knees with your hands directly under your shoulders and your knees under your hips.\n"
            "2. Engage your core and lift one leg up towards the ceiling, keeping your knee bent at a 90-degree angle.\n"
            "3. Lower the leg back down and repeat with the other leg.\n"
            "4. Continue alternating legs for the desired number of repetitions.",
      ),
      Exercise(
        id: 16,
        name: "Lateral Leg Raises",
        imageUrl: "exercise/leg.jpg",
        description: "1. Stand with your feet shoulder-width apart and your hands on your hips.\n"
            "2. Lift one leg out to the side as high as you can, keeping it straight.\n"
            "3. Slowly lower the leg back down and repeat with the other leg.\n"
            "4. Continue alternating legs for the desired number of repetitions.",
      ),
      Exercise(
        id: 17,
        name: "Marching Glute Bridge",
        imageUrl: "exercise/glute.png",
        description: "1. Lie on your back with your knees bent and feet flat on the floor.\n"
            "2. Lift your hips off the floor, squeezing your glutes, and engage your core.\n"
            "3. Lift one knee towards your chest, keeping the other foot on the ground.\n"
            "4. Lower the lifted leg back down and repeat with the other leg.\n"
            "5. Continue alternating legs for the desired number of repetitions.",
      ),
      Exercise(
        id: 18,
        name: "High Knees",
        imageUrl: "exercise/knees.jpg",
        description: "1. Stand with your feet hip-width apart.\n"
            "2. Run in place, lifting your knees as high as you can.\n"
            "3. Pump your arms in sync with your leg movements.\n"
            "4. Continue for the desired amount of time.",
      ),
      Exercise(
        id: 19,
        name: "Froggers",
        imageUrl: "exercise/frog.png",
        description: "1. Start in a high plank position with your hands directly under your shoulders.\n"
            "2. Jump your feet forward, landing outside of your hands in a deep squat position.\n"
            "3. Jump your feet back to the starting position.\n"
            "4. Repeat for the desired number of repetitions.",
      ),
      Exercise(
        id: 20,
        name: "Exercise 20",
        imageUrl: "exercise/extra.png",
        description: "Description of Exercise 20",
      ),
    ];
    return exercises;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.directions_run, color: Colors.black),
            SizedBox(width: 10),
            Text('Exercises', style:
            TextStyle(color: Colors.black))
          ],
        ),

        backgroundColor: Colors.blue[50],
        iconTheme: IconThemeData(
          color: Colors.black, // Set your desired color here
        ),
      ),
    body: FutureBuilder<List<Exercise>>(
    future: _exercisesFuture,
    builder: (context, snapshot) {
    if (snapshot.hasData) {
    final exercises = snapshot.data!;
    return GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 1,
    childAspectRatio: 1,
    ),
    itemCount: exercises.length,
    itemBuilder: (context, index) {
    final exercise = exercises[index];
    return GestureDetector(
    onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => ExerciseDetailPage(exercise: exercise),
    ),
    );
    },
    child: Container(
      width: double.infinity,
      child: Card(
      child: Column(
      children: [
      Expanded(
      child: Image.asset(
      exercise.imageUrl,
      fit: BoxFit.fitWidth,
      ),
      ),
      Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
      exercise.name,
      style: TextStyle(fontSize: 16),
      textAlign: TextAlign.center,
      ),
      ),
      ],
      ),
      ),
    ),
    );
    },
    );
    } else if (snapshot.hasError) {
      return Center(
        child: Text('Failed to load exercises'),
      );
    } else {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    },
    ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercise App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExercisePage(),
    );
  }
}

