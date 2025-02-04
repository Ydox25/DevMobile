import 'package:flutter/material.dart';
import 'package:tp2/models/CounterModel.dart';
import 'package:flutter/foundation.dart';

class CounterViewModel extends ChangeNotifier{

  final CounterModel _model = CounterModel();

  int get counter => _model.counter;

  // Méthode d'incrémentation du compteur
  void incrementCounter() {
      _model.incrementCounter();
      notifyListeners();
  }

  // Méthode de décrémentation du compteur
  void decrementCounter() {
      _model.decrementCounter();
      notifyListeners();
  }

}