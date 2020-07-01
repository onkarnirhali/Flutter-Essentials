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
      body: Container(
        color: Colors.grey,
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 150,
              width: 100,
              // color: Colors.amber,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22), color: Colors.amber),
            ),
            Container(
                height: 100,
                width: 100,
                //color: Colors.blueAccent,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Colors.blue)),
            Container(
                height: 100,
                width: 100,
                //color: Colors.deepPurple,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Colors.deepPurple))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        elevation: 22,
        hoverColor: Colors.blue,
      ),
      drawer: Drawer(
          child: ListView(
        padding: const EdgeInsets.all(0),
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Onkar Nirhali"),
            accountEmail: Text("nirhalionkar@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.amber,
            ),
          )
        ],
      )),
    );
  }
}
