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
  void didChangeDependencies() async{
    Provider.of<FishermanDetailsProvider>(context).getFishermanData();
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    var fishermanData = Provider.of<FishermanDetailsProvider>(context).fishermanDetailsData;
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
          "Fisherman Information",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body:ListView.builder(
        shrinkWrap: true,
          itemCount: fishermanData.length,
          itemBuilder: (context,index){
        return Container(
          height: 100,
          width: 100,
          color: Colors.amber,
          child: Text("${fishermanData[index].formId}"),
        );
      })

    );
  }
}
