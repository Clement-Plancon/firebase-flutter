import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'signup.dart'; // Page d'inscription
import 'login.dart'; // Page de connexion
import 'signup.dart'; // Page de profil

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyDZUNYkkn6nUOpDeCfiEAX15PHtsk6lrP4",
      appId: "1:465254138314:android:cb6975a08557aa14f48f33",
      databaseURL: 'https://my-firebase-project-e0f4a-default-rtdb.europe-west1.firebasedatabase.app/',
      messagingSenderId: "XXX",
      projectId: "my-firebase-project-e0f4a",
    ),
  );
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.deepPurple,
            onPrimary: Colors.white,
            textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 24,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
      home: MyHomePage(),
      routes: {
        '/form': (context) => FormPage(), // Page d'inscription
        '/login': (context) => LoginPage(), // Page de connexion
        '/profile': (context) => FormPage(), // Page de profil
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accueil'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Page principale',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/form'); // Aller à la page d'inscription
              },
              child: const Text('Inscription'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login'); // Aller à la page de connexion
              },
              child: const Text('Connexion'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profile'); // Aller à la page de profil
              },
              child: const Text('Profil'),
            ),
          ],
        ),
      ),
    );
  }
}