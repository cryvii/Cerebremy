import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testest/cooking.dart';

/// KEEPING IT BUSYYYYYYYYYYYY
class Attachment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attachment Theory'),
        backgroundColor: Color.fromARGB(255, 220, 43, 152),
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
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> CookingPage()));
                        },
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0.0,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 20),
                              child: Text(
                                'Secure attachment',
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
                              'assets/secure.png',
                              width: 135.0,
                              height: 100.0,
                            ),
                          ),
                        ],
                      ),
                        style: ElevatedButton.styleFrom(
                          elevation: 4,
                          primary: Color(0xFFF8D6CB),
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
                      onPressed: (){},
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
                              'assets/anxious.png',
                              width: 120.0,
                              height: 110.0,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 4,
                        primary: Color(0xFFB7E2C7),
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
                      onPressed: (){},
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0.0,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 20),
                              child: Text(
                                'Fearful Avoidant',
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
                              'assets/fearful_avoidant.png',
                              width: 130.0,
                              height: 95.0,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 4,
                        primary: Color(0xffffebba),
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
                      onPressed: (){},
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
                              'assets/avoid.png',
                              width: 135.0,
                              height: 110.0,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 4,
                        primary: Color(0xFFB8B8E8),
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

