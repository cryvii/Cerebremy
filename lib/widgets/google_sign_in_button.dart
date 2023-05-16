// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:sign_button/sign_button.dart';

// import '../screens/sign_in_screen.dart';
// import '../screens/user_info_screen.dart';
// import '../utils/authentication.dart';

// class GoogleSignInButton extends StatefulWidget {
//   @override
//   _GoogleSignInButtonState createState() => _GoogleSignInButtonState();
// }

// class _GoogleSignInButtonState extends State<GoogleSignInButton> {
//   bool _isSigningIn = false;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 0),
//       child: _isSigningIn
//           ? CircularProgressIndicator(
//         valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
//       )
//           : OutlinedButton(
//         style: ButtonStyle(
//           backgroundColor: MaterialStateProperty.all(Color(0xFF388d86)),
//           side: MaterialStateProperty.all(BorderSide.none),
//           shape: MaterialStateProperty.all(
//             RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(0),
              
//             ),
//           ),
//         ),
//         onPressed: () async {
//           setState(() {
//             _isSigningIn = true;
//           });

//           User? user =
//           await Authentication.signInWithGoogle(context: context);

//           setState(() {
//             _isSigningIn = false;
//           });

//           if (user != null) {
//             Navigator.of(context).pushReplacement(
//               MaterialPageRoute(
//                 builder: (context) => UserInfoScreen(
//                   user: user,
//                 ),
//               ),
//             );
//           }
//         },
//         child: SignInButton.mini(
//                                   // buttonType
//                                   buttonType: ButtonType.google,
//                                   buttonSize: ButtonSize.large,
//                                   btnColor: Colors.transparent,
//                                   elevation: 0.0,
//                                   onPressed: () {
//                                     // Navigator.push(context,MaterialPageRoute(builder: (context)=> SignInScreen()));
//                                   },
//                                 ),
//       ),
//     );
//   }
// }







import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../screens/user_info_screen.dart';
import '../utils/authentication.dart';

class GoogleSignInButton extends StatefulWidget {
  @override
  _GoogleSignInButtonState createState() => _GoogleSignInButtonState();
}

class _GoogleSignInButtonState extends State<GoogleSignInButton> {
  bool _isSigningIn = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: _isSigningIn
          ? CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
          : OutlinedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xFF388d86)),
                side: MaterialStateProperty.all(BorderSide.none),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
              onPressed: () async {
                setState(() {
                  _isSigningIn = true;
                });

                User? user =
                    await Authentication.signInWithGoogle(context: context);

                setState(() {
                  _isSigningIn = false;
                });

                if (user != null) {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => UserInfoScreen(
                        user: user,
                      ),
                    ),
                  );
                }
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: AssetImage("assets/google_logo.png"),
                      height: 35.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        '',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black54,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:sign_button/sign_button.dart';

// import '../screens/sign_in_screen.dart';

// class GoogleSignInButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 16.0),
//       child: OutlinedButton(
//         style: ButtonStyle(
//           backgroundColor: MaterialStateProperty.all(Color(0xFF388d86)),
//           shape: MaterialStateProperty.all(
//             RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(40),
//             ),
//           ),
//         ),
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => SignInScreen()),
//           );
//         },
//         child: SignInButton.mini(
//           buttonType: ButtonType.google,
//           buttonSize: ButtonSize.large,
//           btnColor: Colors.transparent,
//           elevation: 0.0,
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => SignInScreen()),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:sign_button/sign_button.dart';

// import '../screens/sign_in_screen.dart';

// class GoogleSignInButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SignInButton.mini(
//       buttonType: ButtonType.google,
//       buttonSize: ButtonSize.large,
//       btnColor: Colors.transparent,
//       elevation: 0.0,
//       onPressed: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => SignInScreen()),
//         );
//       },
//     );
//   }
// }
