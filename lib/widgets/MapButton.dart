import 'package:tp3/models/CaseModel.dart';
import 'package:tp3/viewmodels/GameViewModel.dart';
import 'package:flutter/material.dart';

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
}