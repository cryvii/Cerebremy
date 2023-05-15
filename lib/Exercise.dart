import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ExercisePage extends StatefulWidget {
  const ExercisePage({Key? key}) : super(key: key);

  @override
  _ExercisePageState createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {
  final String _apiUrl =
      'https://wger.de/api/v2/exercise/?language=2&limit=10&status=2';

  late List<dynamic> _exercises;

  @override
  void initState() {
    super.initState();
    _fetchExercises();
  }

  Future<void> _fetchExercises() async {
    final response = await http.get(Uri.parse(_apiUrl));
    if (response.statusCode == 200) {
      final decodedResponse = jsonDecode(response.body);
      setState(() {
        _exercises = decodedResponse['results'];
      });
    } else {
      throw Exception('Failed to load exercises');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recommended Exercises'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Here are some recommended exercises:',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 16.0),
            if (_exercises.isNotEmpty)
              Expanded(
                child: ListView.builder(
                  itemCount: _exercises.length,
                  itemBuilder: (context, index) {
                    final exercise = _exercises[index];
                    return Card(
                      child: ListTile(
                        title: Text(exercise['name']),
                        subtitle: Text(exercise['description']),
                      ),
                    );
                  },
                ),
              ),
            if (_exercises.isEmpty)
              const Text('No exercises found'),
          ],
        ),
      ),
    );
  }
}


