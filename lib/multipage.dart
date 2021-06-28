import 'package:flutter/material.dart';

class NewTab extends StatefulWidget {
  @override
  _NewTabState createState() => _NewTabState();
}

class _NewTabState extends State<NewTab> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("Abir")),
            RaisedButton(
              child: Text(" Go Back"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
