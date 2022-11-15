import 'package:flutter/material.dart';
import 'package:motsha_app/screen/searched_information.dart';

class SearchHere extends StatefulWidget {
  const SearchHere({Key? key}) : super(key: key);

  @override
  State<SearchHere> createState() => _SearchHereState();
}

class _SearchHereState extends State<SearchHere> {
  TextEditingController filterController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Search Fisherman",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  controller: filterController,
                  decoration: InputDecoration(
                      hintText: "Enter Form ID",
                      prefixIcon: Icon(
                        Icons.search_outlined,
                        color: Colors.green,
                      ),
                      suffixIcon: Icon(
                        Icons.close,
                        color: Colors.red,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Colors.green, width: 2.0)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.green,
                        width: 20,
                      ))),
                ),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                  onPressed: () {

                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => SearchFisherMan(
                              searchInput: filterController.text,
                            )));

                  },
                  child: Text("Search"))
            ],
          ),
        ),
      ),
    );
  }
}
