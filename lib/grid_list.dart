import 'dart:math' as math;
import 'package:flutter/material.dart';

class GridList extends StatefulWidget {
  GridList({Key key}) : super(key: key);

  @override
  _GridListState createState() => _GridListState();
}

class _GridListState extends State<GridList> {
  final rnd = math.Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliver Grid'),
      ),
      body: Center(
        child: Container(
          child: customWidget(),
        ),
      ),
    );
  }

  customWidget() => CustomScrollView(
        slivers: <Widget>[
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return new Container(color: getRandomColor(), height: 150.0);
              },
              childCount: 2,
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return new Container(color: getRandomColor(), height: 150.0);
              },
              childCount: 6,
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return new Container(color: getRandomColor(), height: 150.0);
              },
              //childCount: 4,
            ),
          ),
          /* SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('Grid Item $index'),
                );
              },
              childCount: 20,
            ),
          ), */
        ],
      );

//To get random color
  Color getRandomColor() => Color(rnd.nextInt(0xffffffff));
}
