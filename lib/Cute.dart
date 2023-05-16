import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testest/CUte/Baby.dart';
import 'package:testest/CUte/Cats.dart';
import 'package:testest/CUte/Nature.dart';
import 'package:testest/CUte/Puppies.dart';
import 'package:testest/cooking.dart';
import '/origami.dart';
import '/Exercise.dart';
import 'views/home.dart';
import 'views/homepage.dart';

/// KEEPING IT BUSYYYYYYYYYYYY
class Cute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keeping it busy'),
        backgroundColor: Color(0xff388d86),
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
                    height: 100,
                    child: ElevatedButton(
                        onPressed: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> CuteNaturePicturesPage()));
                        },
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0.0,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 20),
                              child: Text(
                                'Nature',
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
                              'assets/cooking.png',
                              width: 135.0,
                              height: 100.0,
                            ),
                          ),
                        ],
                      ),
                        style: ElevatedButton.styleFrom(
                          elevation: 4,
                          primary: Color(0xfff6e4d6),
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
                    height: 100,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=> CuteBabyPicturesPage()));
                      },
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0.0,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 20),
                              child: Text(
                                'Babies',
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
                              'assets/movies.png',
                              width: 120.0,
                              height: 110.0,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 4,
                        primary: Color(0xfff3effd),
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
                    height: 100,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=> CuteCatPicturesPage()));
                      },
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0.0,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 20),
                              child: Text(
                                'Cats',
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
                              'assets/reading.jpg',
                              width: 130.0,
                              height: 115.0,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 4,
                        primary: Color(0xfff9ded7),
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
                    height: 100,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=> CutePuppiesPage()));
                      },
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0.0,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 20),
                              child: Text(
                                'Puppies',
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
                              'assets/download.jpg',
                              width: 135.0,
                              height: 110.0,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 4,
                        primary: Colors.blue[50],
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

