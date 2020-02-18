import 'package:flutter/material.dart';

class MyCustomAppBar extends StatefulWidget {
  MyCustomAppBar({Key key}) : super(key: key);

  @override
  _MyCustomAppBarState createState() => _MyCustomAppBarState();
}

class _MyCustomAppBarState extends State<MyCustomAppBar> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: customWidget(),
        ),
      ),
    );
  }

  customWidget() => CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('SliverAppBar'),
            backgroundColor: Colors.green,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('assets/forest.jpg', fit: BoxFit.cover),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 150.0,
            delegate: SliverChildListDelegate(
              [
                Container(color: Colors.red),
                Container(color: Colors.purple),
                Container(color: Colors.green),
                Container(color: Colors.orange),
                Container(color: Colors.yellow),
                Container(color: Colors.pink),
              ],
            ),
          ),
        ],
      );
}
