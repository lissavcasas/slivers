import 'package:flutter/material.dart';
import 'package:gridview/sliver_appbar.dart';
//import 'package:gridview/sliver_grid.dart';
//import 'sliver_list.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyCustomAppBar(),
    );
  }
}