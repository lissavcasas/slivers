import 'package:flutter/material.dart';
import 'package:gridview/sample.dart';
//import 'package:gridview/sliver_appbar.dart';
//import 'package:gridview/sliver_grid.dart';
//import 'sliver_list.dart';

/* void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyCustomAppBar(), //Sliver AppBar
      //home: GridList(), //Sliver Grid
      //home: DemoPage(), //Sliver List
    );
  }
} */

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        fontFamily: 'Georgia',
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Collapsing List Demo')),
        body: CollapsingList(),
      ),
    );
  }
}
