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
        child: Card(
          elevation: 20,
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
              //backgroundColor: Colors.amber,
              backgroundImage: NetworkImage(
                  "https://s30776.pcdn.co/wp-content/uploads/2020/04/AdobeStock_305233591.jpeg"),
            ),
          )
        ],
      )),
    );
  }
}
