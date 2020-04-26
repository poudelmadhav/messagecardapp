import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Message Card App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String message = "OK";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Message Card App"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              height: 260.0,
              color: Colors.red,
              child: Center(
                child: Text(
                  message,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontFamily: "cursive",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              maxLength: 30,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Your message",
                helperText: "You can write your message here",
                prefixIcon: Icon(
                  Icons.edit,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: RaisedButton(
              onPressed: () {},
              color: Colors.red,
              child: Text(
                "Clear the text",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.red,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.green,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.orange,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
