import 'package:tp3/models/CaseModel.dart';
import 'package:tp3/viewmodels/GameViewModel.dart';
import 'package:flutter/material.dart';
/*
class MapButton extends StatelessWidget {
  final int x;
  final int y;

  const MapButton({
    super.key,
    required this.x,
    required this.y,
})


  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () => GameViewModel().click(a),
      onLongPress: () => GameViewModel().onLongPress(a),
      child:,
    );
  }
}*/
import 'package:flutter/material.dart';
import 'package:tp3/viewmodels/GameViewModel.dart';

class MapButton extends StatelessWidget {
  final int x;
  final int y;
  final GameViewModel gameViewModel;

  const MapButton({
    super.key,
    required this.x,
    required this.y,
    required this.gameViewModel,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => gameViewModel.click(x, y),
      onLongPress: () => gameViewModel.onLongPress(x, y),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          color: Colors.grey[300],
        ),
        child: Center(
          child: gameViewModel.getIcon(x, y),
        ),
      ),
    );
  }
}