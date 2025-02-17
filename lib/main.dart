import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tp3/viewmodels/GameViewModel.dart';
import 'package:tp3/views/GameView.dart';

import 'package:tp3/core/constants/constants.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => GameViewModel(),
      child : MaterialApp(
      title: Constant.appTitle,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Constant.primaryColor),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => GameView(),
      },
    )
    );
  }
}

/*
 * Page d'accueil et son état mutable
 */


/*
 * Etat mutable de la page d'accueil
 */


/*
 * La seconde page de votre app
 */
