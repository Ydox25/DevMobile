import 'dart:math';

import 'CaseModel.dart';

class MapModel {
  int nbLine = 0;
  int nbCol = 0;
  int nbBomb = 0;
  List<List<CaseModel>> _cases = List<List<CaseModel>>.empty();

  MapModel(this.nbLine, this.nbCol, this.nbBomb, this._cases);



  void initCases() {
    _cases = List<List<CaseModel>>.generate(nbLine, (i) => List<CaseModel>.generate(nbCol, (j) => CaseModel()));
  }

  void initBomb() {
    int cptBomb = 0;
    while (cptBomb < nbBomb){
      int x = Random().nextInt(nbCol);
      int y = Random().nextInt(nbLine);
      if (!_cases[x][y].hasBomb){
        _cases[x][y].hasBomb = true;
        cptBomb++;
      }
    }

  }

  CaseModel? tryGetCase(int x, int y) {
    if (x < nbCol && x >= 0 && y < nbLine && y >= nbLine ) {
      return _cases[x][y];
    }
  }

  int computeNumber(int x, int y){
    int nbBomb = 0;
    CaseModel? a = tryGetCase(x, y);
    int i = -1;
    int j = -1;
    while(j < 2){
      while(i < 2) {
        if (_cases[x+i][y+j].hasBomb){
          nbBomb++;
        }
        i++;
      }
      i = -1;
      j++;
    }
    return nbBomb;
  }



  void initNumber(){
    for (int y = 0; y < nbLine; y++){
      for (int x = 0; x < nbCol; x++){
        if (!_cases[x][y].hasBomb){
          _cases[x][y].number = computeNumber(x, y);
        }
      }
    }
  }

  void generateMap(){
    initCases();
    initNumber();
    initBomb();
  }


  void reveal(CaseModel a){
    a.hidden = false;
  }

  void revealAll(){
    for (int y = 0; y < nbLine; y++){
      for (int x = 0; x < nbCol; x++){
        _cases[x][y].hidden = false;
      }
    }
  }

  void explode(CaseModel a){
    a.hasExploded = true;
  }

  void toggleFlag(CaseModel a){
    if (a.hasFlag){
      a.hasFlag = false;
    } else {
      a.hasFlag = true;
    }
  }


}