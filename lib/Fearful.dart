import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FearfulAvoidantRemediesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fearful',
        style: GoogleFonts.merriweather(),),
        backgroundColor: Color(0xffdfcaa0)
            //.fromARGB(255, 205, 39, 39),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          
            children: [
              Text(
                'Remedies if you\'re fearfully attached',
                style: GoogleFonts.bitter(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              RemediesCard(
                number: '1.',
                title: 'Remember and Cherish your \n Precious Happy Memories',
                description:
                    'Maybe your attachement with your parent was challenged, maybe it still is and there is no way to fix that. You may face insecurity in the face of emotional situations and THAT\'S OKAY. Maybe try recalling all the happy memories with the people you love and they loved you. Maybe it is worthy to fight for. Give it a shot.'
              ),
              RemediesCard(
                number: '2.',
                title: 'Be the President of your own \n Self Love Club ✨',
                description:
                    'Be gentle and understanding with yourself. Recognize that your fears and avoidance stem from past experiences, and it takes time and effort to heal and grow. You\'re doing great, you\'re trying you level best and it\'s working. In some secret magical way, it\'s all working out.',
              ),
              RemediesCard(
                number: '3.',
                title: 'Cultivate self-awareness',
                description:
                    'Pay attention to your thoughts, emotions, and behaviors. Explore the triggers that lead to fear or avoidance and try to identify patterns.',
              ),
              RemediesCard(
                number: '4.',
                title: 'Think like a puppy 🐾🐶\n if you feel overly fearful',
                description:
                    'Those cute little cuddly angels from heaven can surely teach us a lot. They\'re extremely brave, even when they\'re treating harshly by humans, they still HOPE 🤞🏻 and trust the next person with all their little heart. Can you try to think like that the next time you interact with people? ',
              ),
              // Add more RemediesCard widgets for additional remedies
            ],
          ),
        ),
      ),
    );
  }
}

class RemediesCard extends StatelessWidget {
  final String number;
  final String title;
  final String description;

  const RemediesCard({
    required this.number,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  number,
                  style: GoogleFonts.raleway(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  title,
                  style: GoogleFonts.bitter(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(description,
            style: GoogleFonts.raleway(),),
          ],
        ),
      ),
    );
  }
}
