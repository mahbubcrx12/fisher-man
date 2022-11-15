import 'package:flutter/material.dart';
import 'package:motsha_app/provider/fisherman_details_provider.dart';
import 'package:motsha_app/provider/notice_provider.dart';
import 'package:motsha_app/screen/search_fisherman.dart';
import 'package:motsha_app/screen/searched_information.dart';
import 'package:motsha_app/screen/splash.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NoticeProvider()),
        ChangeNotifierProvider(create: (context)=>FishermanDetailsProvider())
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
       //  home: SplashScreen()),
       //  home: SplashScreen()),
          home: SearchHere()),
    );
  }
}
