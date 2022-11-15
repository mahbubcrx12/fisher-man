import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:motsha_app/model/fisherman_model.dart';

class GetFishermanDetails {
  static const Map<String, String> defaultHeader = {
    "Accept": "application/json",
  };
String userInput="2220250";
  Future<dynamic> fetchFisherman(userInput) async {

    List<Data> fishermanData = [];
    try {
      var link = "http://dof-demo.rdtl.xyz/api/fisher/get-details/${userInput}";
      var response =
      await http.get(Uri.parse(link), headers: await defaultHeader);

      print(response.statusCode);
      if (response.statusCode == 200) {

        var data = jsonDecode(response.body);
        print("ggggggggggggg $data");

        Data fisharData;
        for (var i in data['data']) {
          fisharData = Data.fromJson(i);
          fishermanData.add(fisharData);
          print("aaaaaaaaaaaaaaaaaaaaaaaaaa$fishermanData");
        }

        return fishermanData;
      } else {
        return fishermanData;
      }
    } catch (e) {
      print("Errrrrrr $e");
      return fishermanData;
    }
  }
}