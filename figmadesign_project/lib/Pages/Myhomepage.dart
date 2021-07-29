import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("HOME")),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings), title: Text("SETTING")),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart), title: Text("CART")),
      ]),
      drawer: Drawer(),
      appBar: AppBar(
          bottom: PreferredSize(
              child: Container(
                alignment: Alignment.center,
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Text(
                      "WELCOME TO NEPBURGER",
                      style: TextStyle(color: Color(0xffFFFFFF), fontSize: 24),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "We serve all kind of burgers.",
                      style: TextStyle(color: Color(0xff757575), fontSize: 14),
                    )
                  ],
                ),
              ),
              preferredSize: Size.fromHeight(150))),
      body: ListView(
        children: [
          //main menu
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              elevation: 20,
              child: Container(
                child: Column(
                  children: [
                    Container(
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                            child: Image.network(
                              "https://images.unsplash.com/photo-1571091655789-405eb7a3a3a8?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGJ1cmdlcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width,
                            child: ListTile(
                              title: Text(
                                "BIG MAC",
                                style: TextStyle(
                                    fontSize: 18, color: Color(0xff212121)),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Tasty Burger Get 10% Off",
                                    style: TextStyle(color: Color(0xff757575)),
                                  ),
                                  RaisedButton(
                                    color: Color(0xff9E9E9E),
                                    textColor: Color(0xff212121),
                                    onPressed: () {},
                                    child: Text("BUY NOW"),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          //wrap example
          Center(
            child: Wrap(
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    color: Colors.grey,
                    width: 100,
                    height: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    color: Colors.grey,
                    width: 100,
                    height: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    color: Colors.grey,
                    height: 100,
                    width: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    color: Colors.green,
                    width: 100,
                    height: 100,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
