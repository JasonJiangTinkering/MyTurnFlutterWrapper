import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

// Add your Firebase configuration
const firebaseConfig = FirebaseOptions(
  apiKey: "AIzaSyBRtwomEMRzispvLQros7yX0bfcYXMUTz0",
  authDomain: "sharp-leaf-430815-b8.firebaseapp.com", 
  projectId: "sharp-leaf-430815-b8",
  storageBucket: "sharp-leaf-430815-b8.appspot.com",
  messagingSenderId: "138887339258",
  appId: "1:138887339258:web:f898d5928a5d2b72cefd43",
  measurementId: "G-J0PD79BVWY"
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: firebaseConfig);
  runApp(const MyApp());
}

class SETTINGS {
  static const title = 'Flutter PWA Wrapper';
  static const url = 'https://bettysteger.com/flutter_pwa_wrapper/demo/'; 
}

// ... rest of your existing code ...