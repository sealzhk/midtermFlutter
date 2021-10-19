import 'package:flutter/material.dart';
import 'dart:io';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alua midterm',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Профиль'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xff47536d),
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.qr_code, size: 30),
          Icon(Icons.people, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      appBar: AppBar(
        backgroundColor: Color(0xff47536d),
        centerTitle: true,
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.exit_to_app,
                color: Colors.white,
              ),
              onPressed: ()=> exit(0))
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20, left: 15, right: 15),
        // height: 250,
        // width: 360,
        child: Column(
          children: [
            Card(
              margin: EdgeInsets.only(bottom: 20),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 15, left: 15),
                child: Column(
                  children: <Widget>[
                    Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          child: Text(
                            "Имя",
                            style: TextStyle(
                                fontSize: 21,
                                color: Colors.black54
                            ),
                          ),
                        )
                    ),
                    Column (
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.only(top: 10, left: 5, right: 20, bottom: 15),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Курьер',
                              fillColor: Color(0xffeff2f7),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                              ),
                              suffixIcon: Padding(
                                padding: EdgeInsets.only(top: 11, right: 10),
                                child: Text(
                                  'Изменить',
                                  style: TextStyle(
                                    color: Color(0xff47536d),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          child: Text(
                            "Телефон",
                            style: TextStyle(
                                fontSize: 21,
                                color: Colors.black54
                            ),
                          ),
                        )
                    ),
                    Column (
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.only(top: 10, left: 5, right: 20, bottom: 15),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '+7077077777',
                              fillColor: Color(0xffeff2f7),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Column(children: [
              ElevatedButton(
                onPressed:(){ },
                child: const Text('История добавления товара'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff47536d),
                  padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                  textStyle:
                  const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(15.0),
                  ),),
              )
            ]
            )
            //
          ],
        ),
        // This trailing comma makes auto-formatting nicer for build methods.

      ),
    );
  }
}