import 'package:flutter/material.dart';
import 'package:tp3/models/CaseModel.dart';
import 'package:tp3/models/MapModel.dart';

class GameViewModel extends ChangeNotifier {
  MapModel easyMap = MapModel(10, 18, 10);
  MapModel MediumMap = MapModel(18, 14, 40);
  MapModel HardMap = MapModel(24, 20, 99);

  void generateMap(){
    easyMap.generateMap();
    notifyListeners();
  }

  void click(CaseModel a){
    if(!a.hasFlag){
      easyMap.reveal(a);
      if(a.hasBomb){
        easyMap.explode(a);
        easyMap.revealAll();
      }
    }
    notifyListeners();
  }

  void onLongPress(CaseModel a){
    easyMap.toggleFlag(a);
    notifyListeners();
  }

  Image getIcon(CaseModel a){
    int? condition;
    if (a.hasFlag){
      condition = 9;
    } else if (a.hasBomb){
      condition = 10;
    } else if (a.hasExploded) {
      condition = 11;
    } else {
      condition = a.number;
    }

    switch (condition) {
      case 1:
        return Image.asset('assets/i1.png', height: 40);
      case 2:
        return Image.asset('assets/i2.png', height: 40);
      case 3:
        return Image.asset('assets/i3.png', height: 40);
      case 4:
        return Image.asset('assets/i4.png', height: 40);
      case 5:
        return Image.asset('assets/i5.png', height: 40);
      case 6:
        return Image.asset('assets/i6.png', height: 40);
      case 7:
        return Image.asset('assets/i7.png', height: 40);
      case 8:
        return Image.asset('assets/i8.png', height: 40);
      case 9:
        return Image.asset('assets/flag.png', height: 40);
      case 10:
        return Image.asset('assets/bomb2.png', height: 40);
      case 11:
        return Image.asset('assets/explode.jpg', height: 40);
      default:
        return Image.asset('path/img_default', height: 40);
    }
    notifyListeners();
  }

}