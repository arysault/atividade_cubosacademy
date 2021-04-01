import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: 100,
            color: Colors.blueAccent,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  PrincipalContainer(),
                  PrincipalContainer(),
                  PrincipalContainer(),
                ],
              ),
            ),
          ),
          Container(
            height: 150,
            color: Colors.blueAccent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RowsBoxes(cor: Colors.white),
                RowsBoxes(cor: Colors.white),
                RowsBoxes(cor: Colors.white)
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class PrincipalContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      height: 40,
      decoration: BoxDecoration(
          color: Colors.grey.shade50, border: Border.all(color: Colors.black)),
    );
  }
}

class RowsBoxes extends StatelessWidget {
  final Color cor;
  RowsBoxes({Key key, this.cor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: cor,
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(3, 5),
            ),
          ]),
    );
  }
}
