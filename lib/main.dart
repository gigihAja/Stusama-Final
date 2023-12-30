import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider.dart';
import 'home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    ChangeNotifierProvider(
      create: (context) => DateProvider(),
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    ),
  );
}
