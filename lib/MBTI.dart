import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'MBTI Quiz',
    home: MBTIQuizPage(),
  ));
}

class MBTIQuizPage extends StatefulWidget {
  @override
  _MBTIQuizPageState createState() => _MBTIQuizPageState();
}

class _MBTIQuizPageState extends State<MBTIQuizPage> {
  List<Question> questions = [
    Question(
      text: 'I enjoy socializing with large groups of people.',
      choices: ['Strongly Disagree', 'Disagree', 'Neutral', 'Agree', 'Strongly Agree'],
    ),
    Question(
      text: 'I prefer to spend my free time alone.',
      choices: ['Strongly Disagree', 'Disagree', 'Neutral', 'Agree', 'Strongly Agree'],
    ),
    // Add more questions here
    // ...
  ];

  List<int> selectedAnswers = List<int>.filled(10, -1);

  int currentQuestionIndex = 0;

  void answerQuestion(int answerIndex) {
    setState(() {
      selectedAnswers[currentQuestionIndex] = answerIndex;

      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      } else {
        // All questions answered, display the MBTI result
        String mbtiResult = calculateMBTIResult();
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('MBTI Result'),
              content: Text('Your MBTI result is: $mbtiResult'),
              actions: <Widget>[
                ElevatedButton(
                  child: Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
    });
  }

  String calculateMBTIResult() {
    // Calculate and return the MBTI result based on selected answers
    // Replace this with your own logic to calculate the result
    return 'INFP';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MBTI Quiz'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Question ${currentQuestionIndex + 1}/${questions.length}:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              questions[currentQuestionIndex].text,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            ListView.builder(
              shrinkWrap: true,
              itemCount: questions[currentQuestionIndex].choices.length,
              itemBuilder: (context, index) {
                return RadioListTile(
                  title: Text(questions[currentQuestionIndex].choices[index]),
                  value: index,
                  groupValue: selectedAnswers[currentQuestionIndex],
                  onChanged: (int? value) {
                    answerQuestion(value!);
                  },
                );
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                answerQuestion(-1); // Skips the current question
              },
              child: Text('Skip'),
            ),
          ],
        ),
      ),
    );
  }
}

class Question {
  final String text;
  final List<String> choices;

  Question({
    required this.text,
    required this.choices,
  });
}
