import 'package:flutter/material.dart';
import 'package:list_view/page1.dart';
import 'package:list_view/page2.dart';
import 'package:list_view/page3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // String _text = "Tawhid";

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Home")),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              Stack(
                children: [
                  Image.asset("assets/star.jpg"),
                  Positioned(
                    left: 20,
                    bottom: 50,
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Image.asset("assets/profile.png"),
                    ),
                  ),
                  Positioned(
                    left: 18,
                    bottom: 25,
                    child: Text(
                      "Tawhid Abir",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.verified_user),
                title: Text("User Account"),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.mail),
                title: Text("Email"),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Setting"),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: PageView(
          scrollDirection: Axis.horizontal,
          controller: _controller,
          children: [
            Page1(),
            Page2(),
            Page3(),
          ],
        ),
      ),
    );
  }
}
