import 'package:ar_shopping_app/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async
{
  try{
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
        options: const FirebaseOptions(
          apiKey: "AIzaSyC_ZwM8UQ2ZEMdKtKR_AtaEt6111KJosUo",
          appId: "1:930376513602:android:5ee586ea03a37bca5e95db",
          messagingSenderId: "930376513602",
          projectId: "ar-furniture-app-98c29",
          storageBucket: "ar-furniture-app-98c29.appspot.com",
        )
    );
  }
  catch(errorMsg){
    'Error:: + ${errorMsg.toString()}';
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Furniture App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

