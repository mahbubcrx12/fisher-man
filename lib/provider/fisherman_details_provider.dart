import 'package:flutter/material.dart';
import 'package:motsha_app/service/fisherman_details_service.dart';
import '../model/fisherman_model.dart';

class FishermanDetailsProvider with ChangeNotifier {
  List<Data> fishermanDetailsData = [];
  getFishermanData() async {
    fishermanDetailsData = await GetFishermanDetails().fetchFisherman("2220250");
    notifyListeners();
  }
}
