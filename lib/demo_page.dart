import 'dart:math' as math;
import 'package:flutter/material.dart';

class DemoPage extends StatefulWidget {
  DemoPage({Key key}) : super(key: key);

  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
final rnd = math.Random();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
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
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                // Para convertir esta lista infinita a una lista con tres
                // elementos descomenta la siguiente linea
                // if (index > 3) return null;
                return Container(color: getRandomColor(), height: 150.0);
              },
              // o comenta la siguiente linea
              // childCount: 3,
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


