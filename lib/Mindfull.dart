// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     title: 'Mindfulness Breathing',
//     home: MindfulnessBreathingPage(),
//   ));
// }

// class MindfulnessBreathingPage extends StatefulWidget {
//   @override
//   _MindfulnessBreathingPageState createState() =>
//       _MindfulnessBreathingPageState();
// }

// class _MindfulnessBreathingPageState extends State<MindfulnessBreathingPage> {
//   bool isBreathing = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Mindfulness Breathing'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Take a deep breath and focus on your breath.',
//               style: TextStyle(fontSize: 20),
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(height: 16),
//             isBreathing
//                 ? Text(
//                     'Inhale...',
//                     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   )
//                 : Text(
//                     'Exhale...',
//                     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   ),
//             SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   isBreathing = !isBreathing;
//                 });
//               },
//               child: isBreathing ? Text('Stop Breathing') : Text('Start Breathing'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     title: 'Mindfulness Breathing',
//     theme: ThemeData(
//       primaryColor: Colors.blue,
//       accentColor: Colors.blueAccent,
//     ),
//     home: MindfulnessBreathingPage(),
//   ));
// }

// class MindfulnessBreathingPage extends StatefulWidget {
//   @override
//   _MindfulnessBreathingPageState createState() =>
//       _MindfulnessBreathingPageState();
// }

// class _MindfulnessBreathingPageState extends State<MindfulnessBreathingPage>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _animation;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 2),
//     );
//     _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     _controller.forward();

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Mindfulness Breathing'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Take a deep breath and focus on your breath.',
//               style: TextStyle(fontSize: 20),
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(height: 32),
//             FadeTransition(
//               opacity: _animation,
//               child: Container(
//                 width: 200,
//                 height: 200,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: Colors.blue,
//                 ),
//                 child: Center(
//                   child: Text(
//                     'Breathe',
//                     style: TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 32),
//             ElevatedButton(
//               onPressed: () {},
//               child: Text('Start Breathing'),
//               style: ElevatedButton.styleFrom(
//                 primary: Colors.green,
//                 padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(24),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     title: 'Mindfulness Breathing',
//     theme: ThemeData(
//       primaryColor: Colors.blue,
//       accentColor: Colors.blueAccent,
//     ),
//     home: MindfulnessBreathingPage(),
//   ));
// }

// class MindfulnessBreathingPage extends StatefulWidget {
//   @override
//   _MindfulnessBreathingPageState createState() =>
//       _MindfulnessBreathingPageState();
// }

// class _MindfulnessBreathingPageState extends State<MindfulnessBreathingPage>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _opacityAnimation;
//   late Animation<double> _scaleAnimation;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 5),
//     );
//     _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
//       CurvedAnimation(
//         parent: _controller,
//         curve: Interval(0.0, 0.5, curve: Curves.easeIn),
//       ),
//     );
//     _scaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
//       CurvedAnimation(
//         parent: _controller,
//         curve: Interval(0.5, 1.0, curve: Curves.easeOut),
//       ),
//     );

//     _controller.addStatusListener((status) {
//       if (status == AnimationStatus.completed) {
//         // Animation completed, reset it
//         _controller.reset();
//         // Start the animation again
//         _controller.forward();
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     _controller.forward();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Mindfulness Breathing'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Take a deep breath and focus on your breath.',
//               style: TextStyle(fontSize: 20),
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(height: 32),
//             AnimatedBuilder(
//               animation: _controller,
//               builder: (BuildContext context, Widget? child) {
//                 return Opacity(
//                   opacity: _opacityAnimation.value,
//                   child: Transform.scale(
//                     scale: _scaleAnimation.value,
//                     child: Container(
//                       width: 200,
//                       height: 200,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: Colors.blue,
//                       ),
//                       child: Center(
//                         child: Text(
//                           'Breathe',
//                           style: TextStyle(
//                             fontSize: 24,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//             SizedBox(height: 32),
//             ElevatedButton(
//               onPressed: () {},
//               child: Text('Start Breathing'),
//               style: ElevatedButton.styleFrom(
//                 primary: Colors.green,
//                 padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(24),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    title: 'Mindfulness Breathing',
    theme: ThemeData(
      primaryColor: Colors.blue,
      accentColor: Colors.blueAccent,
    ),
    home: MindfulnessBreathingPage(),
  ));
}

class MindfulnessBreathingPage extends StatefulWidget {
  @override
  _MindfulnessBreathingPageState createState() =>
      _MindfulnessBreathingPageState();
}

class _MindfulnessBreathingPageState extends State<MindfulnessBreathingPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );
    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 0.5, curve: Curves.easeIn),
      ),
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.5).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.5, 1.0, curve: Curves.easeOut),
      ),
    );

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reset();
        _controller.forward();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mindfulness Breathing',
            style: GoogleFonts.merriweather()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Take a deep breath and focus on your breath.',
            style: GoogleFonts.raleway(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 32),
            AnimatedBuilder(
              animation: _controller,
              builder: (BuildContext context, Widget? child) {
                return Opacity(
                  opacity: _opacityAnimation.value,
                  child: Transform.scale(
                    scale: _scaleAnimation.value,
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                      child: Center(
                        child: Text(
                          'Breathe',
                          style: GoogleFonts.raleway(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {},
              child: Text('Start Breathing',
              style: GoogleFonts.raleway()),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
