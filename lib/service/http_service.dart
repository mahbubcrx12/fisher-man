import 'dart:convert';

import 'package:motsha_app/model/notice.dart';
import 'package:http/http.dart' as http;

class HttpService {
  static const Map<String, String> defaultHeader = {
    "Accept": "application/json",
  };

  Future<List<Data>> fetcNotices() async {
    List<Data> noticeData = [];
    try {
      var link = "http://dof-demo.rdtl.xyz/api/noticeboard/get-all-notice";
      var response =
          await http.get(Uri.parse(link), headers: await defaultHeader);

      print(response.statusCode);
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);

        var fetchedData = data['data'];
        print(data['data']);
        print(fetchedData);

        for (var i in fetchedData) {
          noticeData.add(Data(
              heading: i['heading'],
              image: i['image'],
              createdAt: i['created_at'],
              id: i['id'],
              path: i['path'],
              description: i['description'],
              publishingDate: i['publishingDate'],
              pdfFile: i['pdfFile'],
              pdfFileWithExtension: i['pdfFileWithExtension'],
              status: i['status'],
              createdBy: i['createdBy'],
              updatedAt: i['updated_at']));
        }
        print('kkkkkkkkkkkkkkkkkkkkkk');
        print(noticeData);
        return noticeData;
      } else {
        return noticeData;
      }
    } catch (e) {
      print("Errrrrrr $e");
      return noticeData;
    }
  }
}

class Data {
  int? id;
  String? image;
  String? path;
  String? heading;
  String? description;
  String? publishingDate;
  String? pdfFile;
  String? pdfFileWithExtension;
  String? status;
  String? createdBy;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.image,
      this.path,
      this.heading,
      this.description,
      this.publishingDate,
      this.pdfFile,
      this.pdfFileWithExtension,
      this.status,
      this.createdBy,
      this.createdAt,
      this.updatedAt});
}
