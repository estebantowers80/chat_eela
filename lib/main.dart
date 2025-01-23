
import 'package:chat_eela/src/app/app_navigator.dart';
import 'package:chat_eela/src/core/ui/ui.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  // inicializamos todas las dependencias que tengamos 
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light,
      title: 'Material App',
      //definimos las rutas
      routes: AppNavigator.routes,
      // home: const OnboardingPage(),
    );
  }
}
