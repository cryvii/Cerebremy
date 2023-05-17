import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    Question(
      text: 'I prefer to have a detailed plan rather than being spontaneous.',
      choices: ['Strongly Disagree', 'Disagree', 'Neutral', 'Agree', 'Strongly Agree'],
),

Question(
      text: 'I enjoy exploring abstract concepts and theories.',
      choices: ['Strongly Disagree', 'Disagree', 'Neutral', 'Agree', 'Strongly Agree'],
),

Question(
      text: 'I am comfortable with taking risks and trying new experiences.',
      choices: ['Strongly Disagree', 'Disagree', 'Neutral', 'Agree', 'Strongly Agree'],
),

Question(
      text: 'I tend to trust my instincts and intuition when making decisions.',
      choices: ['Strongly Disagree', 'Disagree', 'Neutral', 'Agree', 'Strongly Agree'],
),

Question(
      text: 'I value harmony and prefer to avoid conflicts or confrontations.',
      choices: ['Strongly Disagree', 'Disagree', 'Neutral', 'Agree', 'Strongly Agree'],
),



Question(
      text: 'I enjoy analyzing data and facts before making judgments.',
      choices: ['Strongly Disagree', 'Disagree', 'Neutral', 'Agree', 'Strongly Agree'],
),


Question(
      text: 'I find it energizing to attend social events and meet new people.',
      choices: ['Strongly Disagree', 'Disagree', 'Neutral', 'Agree', 'Strongly Agree'],
),


Question(
      text: 'I tend to focus on the big picture rather than getting caught up in details.',
      choices: ['Strongly Disagree', 'Disagree', 'Neutral', 'Agree', 'Strongly Agree'],
),


Question(
      text: 'I prefer a structured and organized approach to work or projects.',
      choices: ['Strongly Disagree', 'Disagree', 'Neutral', 'Agree', 'Strongly Agree'],
),


Question(
      text: 'I enjoy engaging in deep, philosophical conversations.',
      choices: ['Strongly Disagree', 'Disagree', 'Neutral', 'Agree', 'Strongly Agree'],
),



Question(
      text: 'I feel energized after spending time alone to recharge.',
      choices: ['Strongly Disagree', 'Disagree', 'Neutral', 'Agree', 'Strongly Agree'],
),


Question(
      text: 'I enjoy helping others and being of service to those in need.',
      choices: ['Strongly Disagree', 'Disagree', 'Neutral', 'Agree', 'Strongly Agree'],
),


Question(
      text: 'I prefer a flexible and adaptable approach to life rather than rigid routines.',
      choices: ['Strongly Disagree', 'Disagree', 'Neutral', 'Agree', 'Strongly Agree'],
),


Question(
      text: 'I am open to considering multiple perspectives and opinions.',
      choices: ['Strongly Disagree', 'Disagree', 'Neutral', 'Agree', 'Strongly Agree'],
),


Question(
      text: 'I find it easy to express my emotions to others.',
      choices: ['Strongly Disagree', 'Disagree', 'Neutral', 'Agree', 'Strongly Agree'],
),


Question(
      text: 'I enjoy brainstorming and generating new ideas with a team.',
      choices: ['Strongly Disagree', 'Disagree', 'Neutral', 'Agree', 'Strongly Agree'],
),


Question(
      text: 'I am motivated by achieving tangible results and goals.',
      choices: ['Strongly Disagree', 'Disagree', 'Neutral', 'Agree', 'Strongly Agree'],
),


Question(
      text: 'I prefer to have a few close friends rather than a large circle of acquaintances.',
      choices: ['Strongly Disagree', 'Disagree', 'Neutral', 'Agree', 'Strongly Agree'],
),


Question(
      text: 'I enjoy learning and exploring a wide range of subjects and interests.',
      choices: ['Strongly Disagree', 'Disagree', 'Neutral', 'Agree', 'Strongly Agree'],
),

Question(
      text: 'I prefer to follow established rules and guidelines rather than improvising.',
      choices: ['Strongly Disagree', 'Disagree', 'Neutral', 'Agree', 'Strongly Agree'],
),
    // Add more questions here
    // ...
  ];

  List<int> selectedAnswers = List<int>.filled(100, -1);

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
              title: Text('MBTI Result'
              ,style: GoogleFonts.merriweather()),
              content: Text('Your MBTI result is: $mbtiResult',style: GoogleFonts.merriweather()),
              actions: <Widget>[
                ElevatedButton(
                  child: Text('OK',style: GoogleFonts.merriweather()),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    primary:Colors.purple[500]
                  ),
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
        title: Text('MBTI Quiz',
            style: GoogleFonts.merriweather()),
        backgroundColor: Colors.purple[500],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Question ${currentQuestionIndex + 1}/${questions.length}:',
          style: GoogleFonts.merriweather(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              questions[currentQuestionIndex].text,
              style: GoogleFonts.merriweather(fontSize: 18),
            ),
            SizedBox(height: 16),
            ListView.builder(
              shrinkWrap: true,
              itemCount: questions[currentQuestionIndex].choices.length,
              itemBuilder: (context, index) {
                return RadioListTile(
                  title: Text(questions[currentQuestionIndex].choices[index],style: GoogleFonts.merriweather()),
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
              child: Text('Skip',
              style: GoogleFonts.merriweather()),
              style: ElevatedButton.styleFrom(
                primary: Colors.purple[500]
              ),
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
