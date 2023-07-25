import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // Import the Firebase Core plugin

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp();
  } catch (e) {
    print('Error initializing Firebase: $e');
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mini Flutter App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Mini Flutter App'),
        ),
        body: Center(
          child: Text(
            'Hello, Flutter Devs!',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
