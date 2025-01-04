import 'package:flutter/material.dart';

import '../data/models/weight_model.dart';

class AgirlikState with ChangeNotifier {

List<WeightModel> _weights = [
  WeightModel(value: 65, time: DateTime(2024)),
  WeightModel(value: 70, time: DateTime(2023)),
  WeightModel(value: 71, time: DateTime(2025)),

];

List<WeightModel> get weights => _weights;


add (WeightModel weight){
  _weights.insert(0, weight);
  notifyListeners();
}
}