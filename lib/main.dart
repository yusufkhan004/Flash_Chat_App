import 'package:chat_application/Authenticate/authenticate.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Authenticate(),
    );
  }
}


// // import 'package:chat_application/screens/chat_screen.dart';
// import 'package:chat_application/login_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'FlutterChat',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: FutureBuilder(
//           future: _fbApp,
//           builder: (context, snapshot) {
//             if (snapshot.hasError) {
//               print('You have an error! ${snapshot.error.toString()}');
//               return Text('Something wnet wrong!');
//             } else if (snapshot.hasData) {
//               return LoginScreen();
//             } else {
//               return Center(
//                 child: CircularProgressIndicator(),
//               );
//             }
//           },
//         ));
//   }
// }

// // stf