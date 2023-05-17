import 'package:flutter/material.dart';
import 'package:testest/Chatter.dart';

void main() {
  runApp(MoodQuestionnaire());
}

class MoodQuestionnaire extends StatefulWidget {
  @override
  _MoodQuestionnaireState createState() => _MoodQuestionnaireState();
}

class _MoodQuestionnaireState extends State<MoodQuestionnaire> {
  Map<String, int> answers = {};

  final List<Question> questions = [
    Question(
      'How do you feel today?',
      ['Happy', 'Sad', 'Excited', 'Angry'],
    ),
    Question(
      'What did you do today?',
      ['Relaxing', 'Working', 'Exercising', 'Socializing'],
    ),
    Question(
      'How was your sleep last night?',
      ['Restful', 'Disturbed', 'Insomnia', 'Dreamy'],
    ),
  ];

  int calculateMood() {
    int totalMood = 0;
    answers.forEach((_, value) {
      totalMood += value;
    });
    return totalMood;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mood Questionnaire'),
        ),
        body: ListView.builder(
          itemCount: questions.length,
          itemBuilder: (context, index) {
            return QuestionWidget(
              question: questions[index],
              onAnswerSelected: (answer) {
                setState(() {
                  answers[questions[index].question] = answer;
                });
              },
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            int mood = calculateMood();
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Your Mood'),
                  content: Text('Your mood score is $mood.'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Close'),
                    ),
                  ],
                );
              },
            );
          },
          child: Icon(Icons.check),
        ),
      ),
    );
  }
}

class Question {
  final String question;
  final List<String> options;

  Question(this.question, this.options);
}

class QuestionWidget extends StatefulWidget {
  final Question question;
  final Function(int) onAnswerSelected;

  QuestionWidget({
    required this.question,
    required this.onAnswerSelected,
  });

  @override
  _QuestionWidgetState createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  int? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.question.question,
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 8.0),
          Column(
            children: widget.question.options.map((option) {
              int index = widget.question.options.indexOf(option);
              return RadioListTile<int>(
                title: Text(option),
                value: index + 1,
                groupValue: selectedAnswer,
                onChanged: (value) {
                  setState(() {
                    selectedAnswer = value;
                    widget.onAnswerSelected(value!);
                  });
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
