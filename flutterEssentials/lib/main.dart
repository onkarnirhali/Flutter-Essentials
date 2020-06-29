import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
        primarySwatch: Colors.green, secondaryHeaderColor: Colors.black),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Essential App"),
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 200,
          clipBehavior: Clip.antiAlias,
          padding: EdgeInsets.symmetric(vertical: 2),
          decoration: BoxDecoration(
              color: Colors.blueAccent,
              gradient: LinearGradient(colors: [Colors.blue, Colors.blueGrey]),
              borderRadius: BorderRadius.circular(5),
              boxShadow: [BoxShadow(color: Colors.black, blurRadius: 20)]),
          alignment: Alignment.center,
          child: Text(
            "Hey Guys!!this is Onkar",
            style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
