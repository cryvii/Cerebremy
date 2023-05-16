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
        title: Text('Cuteness Overload',
            style: GoogleFonts.merriweather()),
        backgroundColor: Color(0xffffc2d1),
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
                    height: 120,
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
                              'assets/nature.jpg',
                              width: 140.0,
                              height: 140.0,
                            ),
                          ),
                        ],
                      ),
                        style: ElevatedButton.styleFrom(
                          elevation: 4,
                          primary: Colors.white,
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
                    height: 120,
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
                              'assets/baby.jpg',
                              width: 140.0,
                              height: 125.0,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 4,
                        primary: Colors.white,
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
                    height: 120,
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
                              'assets/cat.jpg',
                              width: 140.0,
                              height: 125.0,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 4,
                        primary: Colors.white,
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
                    height: 120,
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
                              'assets/dog.jpg',
                              width: 140.0,
                              height: 130.0,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 4,
                        primary: Colors.white,
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

