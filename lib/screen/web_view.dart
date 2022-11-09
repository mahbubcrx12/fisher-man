import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:motsha_app/screen/add_fisherman_info.dart';
import 'package:motsha_app/screen/notice_page.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MatshoWebPage extends StatefulWidget {
  const MatshoWebPage({Key? key}) : super(key: key);

  @override
  State<MatshoWebPage> createState() => _MatshoWebPageState();
}

class _MatshoWebPageState extends State<MatshoWebPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      children: [
        WebView(
          initialUrl: "https://app.rdtl.xyz/",
          javascriptMode: JavascriptMode.unrestricted,
        ),
        Positioned(
            right: 0,
            top: 15,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 40,
                width: 100,
                child: Icon(
                  Icons.menu,
                  color: Colors.red,
                  size: 40,
                ),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
            )),
        Positioned(
            right: 0,
            top: 140,
            child: GestureDetector(
              onTap: (() {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: ((context) => AddFisherMan())));
              }),
              child: Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(color: Colors.teal.withOpacity(.8)),
                child: Center(
                  child: Text(
                    "Reg.",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.yellow,
                        decoration: TextDecoration.none),
                  ),
                ),
              ),
            )),
        Positioned(
            right: 0,
            top: 60,
            child: GestureDetector(
              onTap: (() {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: ((context) => NoticePage())));
              }),
              child: Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(color: Colors.red.withOpacity(.8)),
                child: Center(
                  child: Text(
                    "Notice",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.yellow,
                        decoration: TextDecoration.none),
                  ),
                ),
              ),
            )),
        Positioned(
            right: 0,
            top: 100,
            child: GestureDetector(
              onTap: (() {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: ((context) => AddFisherMan())));
              }),
              child: Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(color: Colors.black.withOpacity(.8)),
                child: Center(
                  child: Text(
                    "Search",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.yellow,
                        decoration: TextDecoration.none),
                  ),
                ),
              ),
            ))
      ],
    ));
  }
}
