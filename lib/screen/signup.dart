// import 'package:flutter/material.dart';
// import 'package:paco_money/model/profile.dart';

// class SignupScreen extends StatefulWidget {
//   const SignupScreen({super.key});

//   @override
//   _SignupScreenState createState() => _SignupScreenState();
// }

// class _SignupScreenState extends State<SignupScreen> {
//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();
//   final Profile profile = Profile(email: '', password: '');

//   String? email = '';
//   String? password = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Signup"),
//       ),
//       backgroundColor: Color(0xFFF5A359), // เพิ่มพื้นหลังสี FFF18585
//       body: Container(
//         child: Padding(
//           padding: const EdgeInsets.fromLTRB(50, 100, 50, 100),
//           child: Form(
//             key: formKey,
//             child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   Text(
//                     "Email",
//                     style: const TextStyle(fontSize: 20),
//                   ),
//                   TextFormField(
//                     keyboardType: TextInputType.emailAddress,
//                     decoration: InputDecoration(
//                       hintText: 'Your email',
//                     ),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter your email address';
//                       }
//                       return null; // Valid email
//                     },
//                     onSaved: (newValue) => email = newValue,
//                   ),
//                   SizedBox(height: 15),
//                   Text(
//                     "Password",
//                     style: const TextStyle(fontSize: 20),
//                   ),
//                   TextFormField(
//                     obscureText: true,
//                     decoration: InputDecoration(
//                       hintText: 'Your password',
//                     ),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter a password';
//                       }
//                       return null; // Valid password (consider adding complexity rules)
//                     },
//                     onSaved: (newValue) => password = newValue,
//                   ),
//                   SizedBox(height: 30), //เว้นระยะห่างปุ่ม sign up ลงมา 
//                   ElevatedButton(
//                     child: const Text("SIGN UP", style: TextStyle(fontSize: 20)),
//                     onPressed: () {
//                       if (formKey.currentState!.validate()) {
//                         formKey.currentState!.save();

//                         // Handle signup logic here
//                         //  - Call a backend API for user registration
//                         //  - Show a success/error message
//                         //  - Navigate to the next screen
//                       }
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


// // import 'package:flutter/material.dart';
// // import 'package:paco_money/model/profile.dart';
// // import 'package:firebase_core/firebase_core.dart';

// // class SignupScreen extends StatefulWidget {
// //   const SignupScreen();

// //   @override
// //   _SignupScreenState createState() => _SignupScreenState();
// // }


// // class _SignupScreenState extends State<SignupScreen> {
// //   final GlobalKey<FormState> formKey = GlobalKey<FormState>();
// //   final Profile profile = Profile(email: '', password: '');
// //   final Future<FirebaseApp> firebase = Firebase.initializeApp();

// //   String? email = '';
// //   String? password = '';

// //   @override
// //   Widget build(BuildContext context) {
// //     return FutureBuilder(
// //         future: firebase,
// //         builder: (context, snapshort) {
// //           if (snapshort.hasError) {
// //             return Scaffold(
// //               appBar: AppBar(
// //                 title: Text('Error'),
// //               ),
// //               body: Center(
// //                 child: Text("${snapshort.error}"),
// //               ),
// //             );
// //           }

// //           if (snapshort.connectionState == ConnectionState.done) {
// //             return Scaffold(
// //               appBar: AppBar(
// //                 title: const Text("Signup"),
// //               ),
// //               backgroundColor: Color(0xFFF5A359), // เพิ่มพื้นหลังสี FFF18585
// //               body: Container(
// //                 child: Padding(
// //                   padding: const EdgeInsets.fromLTRB(50, 100, 50, 100),
// //                   child: Form(
// //                     key: formKey,
// //                     child: SingleChildScrollView(
// //                       child: Column(
// //                         children: [
// //                           Text(
// //                             "Email",
// //                             style: const TextStyle(fontSize: 20),
// //                           ),
// //                           TextFormField(
// //                             keyboardType: TextInputType.emailAddress,
// //                             decoration: InputDecoration(
// //                               hintText: 'Your email',
// //                             ),
// //                             validator: (value) {
// //                               if (value == null || value.isEmpty) {
// //                                 return 'Please enter your email address';
// //                               }
// //                               return null; // Valid email
// //                             },
// //                             onSaved: (newValue) => email = newValue,
// //                           ),
// //                           SizedBox(height: 15),
// //                           Text(
// //                             "Password",
// //                             style: const TextStyle(fontSize: 20),
// //                           ),
// //                           TextFormField(
// //                             obscureText: true,
// //                             decoration: InputDecoration(
// //                               hintText: 'Your password',
// //                             ),
// //                             validator: (value) {
// //                               if (value == null || value.isEmpty) {
// //                                 return 'Please enter a password';
// //                               }
// //                               return null; // Valid password (consider adding complexity rules)
// //                             },
// //                             onSaved: (newValue) => password = newValue,
// //                           ),
// //                           SizedBox(height: 30), //เว้นระยะห่างปุ่ม sign up ลงมา
// //                           ElevatedButton(
// //                             child: const Text("SIGN UP",
// //                                 style: TextStyle(fontSize: 20)),
// //                             onPressed: () {
// //                               if (formKey.currentState!.validate()) {
// //                                 formKey.currentState!.save();

// //                                 // Handle signup logic here
// //                                 //  - Call a backend API for user registration
// //                                 //  - Show a success/error message
// //                                 //  - Navigate to the next screen
// //                               }
// //                             },
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             );
// //           }
// //           return Scaffold(
// //               body: Center(
// //             child: CircularProgressIndicator(),
// //           ));
// //         });
// //   }
// // }

import 'package:flutter/material.dart';
import 'package:paco_money/model/profile.dart';
import 'package:firebase_core/firebase_core.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final Profile profile = Profile(email: '', password: '');

  String? email;
  String? password;
  late Future<FirebaseApp> _firebaseApp;

  @override
  void initState() {
    super.initState();
    _firebaseApp = Firebase.initializeApp();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _firebaseApp,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (snapshot.hasError) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Error'),
            ),
            body: Center(
              child: Text('Error: ${snapshot.error}'),
            ),
          );
        } else {
          return Scaffold(
            appBar: AppBar(
              title: Text("Signup"),
            ),
            backgroundColor: Color(0xFFF5A359), // เพิ่มพื้นหลังสี FFF18585
            body: Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(50, 100, 50, 100),
                child: Form(
                  key: formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          "Email",
                          style: const TextStyle(fontSize: 20),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: 'Your email',
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email address';
                            }
                            return null; // Valid email
                          },
                          onSaved: (newValue) => email = newValue,
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Password",
                          style: const TextStyle(fontSize: 20),
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Your password',
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a password';
                            }
                            return null; // Valid password (consider adding complexity rules)
                          },
                          onSaved: (newValue) => password = newValue,
                        ),
                        SizedBox(height: 30), //เว้นระยะห่างปุ่ม sign up ลงมา
                        ElevatedButton(
                          child: const Text("SIGN UP", style: TextStyle(fontSize: 20)),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              formKey.currentState!.save();

                              // Handle signup logic here
                              //  - Call a backend API for user registration
                              //  - Show a success/error message
                              //  - Navigate to the next screen
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
