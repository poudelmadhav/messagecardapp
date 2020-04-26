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
  String message = "";
  Color themeColor = Colors.red;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeColor,
        title: Text("Message Card App"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              height: 260.0,
              color: themeColor,
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
              controller: controller,
              onChanged: (String newValue) {
                setState(() {
                  message = newValue;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2.0,
                    color: themeColor,
                  )
                ),
                hintText: "Your message",
                helperText: "You can write your message here",
                prefixIcon: Icon(
                  Icons.edit,
                  color: themeColor,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: RaisedButton(
              onPressed: () {
                controller.clear();
              },
              color: themeColor,
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
                  InkWell(
                    onTap: () {
                      setState(() {
                        themeColor = Colors.red;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: themeColor,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        themeColor = Colors.blue;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        themeColor = Colors.green;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        themeColor = Colors.orange;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.orange,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
