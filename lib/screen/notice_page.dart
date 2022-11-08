import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:motsha_app/provider/notice.dart';
import 'package:motsha_app/service/http_service.dart';
import 'package:provider/provider.dart';

class NoticePage extends StatefulWidget {
  const NoticePage({Key? key}) : super(key: key);

  @override
  State<NoticePage> createState() => _NoticePageState();
}

class _NoticePageState extends State<NoticePage> {
  @override
  void didChangeDependencies() async {
    // TODO: implement didChangeDependencies
    Provider.of<NoticeProvider>(context).getNoticeData();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var noticeData = Provider.of<NoticeProvider>(context).noticeData;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Notice ",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: noticeData.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  child: Card(
                    elevation: 4,
                    color: Colors.white,
                    child: ExpansionTile(
                      title: Text(
                        '${noticeData[index].heading}',
                        style: TextStyle(color: Colors.black),
                        maxLines: 1,
                      ),
                      subtitle: Text(
                        "${noticeData[index].publishingDate}",
                        style: TextStyle(color: Colors.black),
                      ),
                      children: [
                        //Image(image: NetworkImage("${noticeData[index].image}")),
                        Text("${noticeData[index].description}")
                      ],
                    ),
                  ),
                );
              })),
    );
  }
}
