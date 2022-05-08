import 'package:flutter/material.dart';
import 'package:note_taking_app/screens/authentication/authentication.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:note_taking_app/services/firebase.dart';

void main() async{
  FirebaseService();
  runApp(const ProviderScope(child: MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Authentication(),
    );
  }
}
