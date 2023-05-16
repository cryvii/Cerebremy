import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testest/Affirmations.dart';
import 'package:testest/Avoidant.dart';
import 'package:testest/Fearful.dart';
import 'package:testest/cooking.dart';
import 'Jounaling.dart';

/// KEEPING IT BUSYYYYYYYYYYYY
class Attachment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attachment Theory'),
        backgroundColor: Color(0xfff47e6e)
        //Colors.pink[500]
        //Color.fromARGB(255, 220, 43, 152),
      ),
      body: Align(
        alignment: Alignment.topLeft,
        child: SingleChildScrollView(
          child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              Align(
                alignment: Alignment.topCenter,          
                child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: SizedBox(
                    width: double.infinity,
                    height: 150,
                    child: ElevatedButton(
                        onPressed: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> JournalScreen()));
                        },
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0.0,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 20),
                              child: Text(
                                'Secure',
                                style: GoogleFonts.bitter(
                                    fontSize: 22.0,
                                    color: Colors.black
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0.0,
                            child: Image.asset(
                              'assets/secure.jpg',
                              width: 170.0,
                              height: 165.0,
                            ),
                          ),
                        ],
                      ),
                        style: ElevatedButton.styleFrom(
                          elevation: 4,
                          primary: Color(0xffffffff),
                          //Color(0xFFF8D6CB),
                          onSurface: Colors.grey,
                          shadowColor: Colors.grey.withOpacity(0.1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            side: BorderSide(color: Colors.black, width: 2.0)
                          ),
                        ),
                      ),
                  ),
                ),
              ),
              SizedBox(height: 15.0,),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: SizedBox(
                    width: double.infinity,
                    height: 150,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=> MentalHealthPage()));
                      },
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0.0,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 20),
                              child: Text(
                                'Anxious',
                                style: GoogleFonts.bitter(
                                    fontSize: 22.0,
                                    color: Colors.black
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0.0,
                            child: Image.asset(
                              'assets/Anxious.jpg',
                              width: 160.0,
                              height: 155.0,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 4,
                        primary:Color(0xffffffff),
                        //Color(0xFFB7E2C7),
                        onSurface: Colors.grey,
                        shadowColor: Colors.grey.withOpacity(0.1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            side: BorderSide(color: Colors.black, width: 2.0)
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: SizedBox(
                    width: double.infinity,
                    height: 150,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=> FearfulAvoidantRemediesPage()));
                      },
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0.0,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 20),
                              child: Text(
                                'Fearful',
                                style: GoogleFonts.bitter(
                                    fontSize: 22.0,
                                    color: Colors.black
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0.0,
                            child: Image.asset(
                              'assets/Fearful.jpg',
                              width: 160.0,
                              height: 165.0,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 4,
                        primary: Color(0xffffffff),
                        //Color(0xffffebba),
                        onSurface: Colors.grey,
                        shadowColor: Colors.grey.withOpacity(0.1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            side: BorderSide(color: Colors.black, width: 2.0)
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: SizedBox(
                    width: double.infinity,
                    height: 150,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=> CommunicationChallengesPage()));
                      },
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0.0,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 20),
                              child: Text(
                                'Avoidant',
                                style: GoogleFonts.bitter(
                                  fontSize: 22.0,
                                  color: Colors.black
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0.0,
                            child: Image.asset(
                              'assets/avoidant.jpg',
                              width: 160.0,
                              height: 165.0,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 4,
                        primary: Color(0xffffffff),
                        //Color(0xFFB8B8E8),
                        onSurface: Colors.grey,
                        shadowColor: Colors.grey.withOpacity(0.1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            side: BorderSide(color: Colors.black, width: 2.0)
                        ),
                      ),
                    ),
                  ),
                ),
              ),
    ],
        ),
        ),
      )
    );
  }
}

