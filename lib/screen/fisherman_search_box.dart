import 'package:flutter/material.dart';

import 'package:motsha_app/provider/fisherman_details_provider.dart';

import 'package:provider/provider.dart';

class SearchFisherMan extends StatefulWidget {
  const SearchFisherMan({Key? key}) : super(key: key);

  @override
  State<SearchFisherMan> createState() => _SearchFisherManState();
}

class _SearchFisherManState extends State<SearchFisherMan> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    Provider.of<FishermanDetailsProvider>(context).getFishermanData();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var fishermanData =
        Provider.of<FishermanDetailsProvider>(context).fishermanDetailsData;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
          title: Text(
            "Search Fisherman",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: ListView.builder(
            shrinkWrap: true,
            itemCount: fishermanData.length,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.amber,
                child: Center(
                  child: Text("${fishermanData[index].formId}"),
                ),
              );
            })

        // Container(
        //   child: Padding(
        //     padding: const EdgeInsets.all(20.0),
        //     child: Column(
        //       children: [
        //         SizedBox(
        //           height: 100,
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.all(12.0),
        //           child: TextField(
        //             decoration: InputDecoration(
        //                 hintText: "Enter Form ID",
        //                 prefixIcon: Icon(
        //                   Icons.search_outlined,
        //                   color: Colors.green,
        //                 ),
        //                 suffixIcon: Icon(
        //                   Icons.close,
        //                   color: Colors.red,
        //                 ),
        //                 focusedBorder: OutlineInputBorder(
        //                     borderSide: const BorderSide(
        //                         color: Colors.green, width: 2.0)),
        //                 border: OutlineInputBorder(
        //                     borderSide: BorderSide(
        //                   color: Colors.green,
        //                   width: 20,
        //                 ))),
        //           ),
        //         ),
        //         ElevatedButton(
        //             style: ButtonStyle(
        //                 backgroundColor: MaterialStateProperty.all(Colors.green)),
        //             onPressed: () {},
        //             child: Text("Search"))
        //       ],
        //     ),
        //   ),
        // ),
        );
  }
}
