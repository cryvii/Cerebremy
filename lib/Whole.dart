import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testest/cooking.dart';

/// KEEPING IT BUSYYYYYYYYYYYY
class Whole extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Happy News :)'),
        backgroundColor: Color.fromARGB(205, 142, 7, 7),
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
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> CookingPage()));
                        },
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0.0,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 20),
                              child: Text(
                                'International Nurses \n Day',
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
                              'assets/nurses.jpeg',
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
                    height: 215,
                    child: ElevatedButton(
                      onPressed: (){},
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0.0,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 20),
                              child: Text(
                                'Love Freckles \n Charlene Cerros was \n bullied about her \n freckles and always felt ashamed of \n her skin – until she saw herself \nthrough the eyes of her child',
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
                              'assets/freckles.webp',
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
                      onPressed: (){},
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0.0,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 20),
                              child: Text(
                                'Origami',
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
                              'assets/origami.jpg',
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
                    height: 100,
                    child: ElevatedButton(
                      onPressed: (){},
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0.0,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 20),
                              child: Text(
                                'Exercise',
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

