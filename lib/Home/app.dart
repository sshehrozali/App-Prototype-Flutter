// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:awesome_app/Home/drawer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    var res = await http.get(Uri.parse(url));
    setState(() {
      data = jsonDecode(res.body);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Inbox")),
        drawer: MyDrawer(),
        body: data != null
            ? Container(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Card(
                          child: ListTile(
                        title: Text(data[index]["title"]),
                      )),
                    );
                  },
                  itemCount: data.length,
                ),
              )
            : Center(
                child: Container(
                  child: CircularProgressIndicator(),
                ),
              ));
  }
}
