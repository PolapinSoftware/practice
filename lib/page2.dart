import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:list_view/multipage.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  // _showSnackbar() {
  //   var _mySnackbar = SnackBar(content: Text("Hello, I am Tawhid"));
  //   _scaffoldKey.currentState!.showSnackBar(_mySnackbar);
  // }

  _showToast() {
    Fluttertoast.showToast(
        msg: "Hello!!! Go back.....",
        toastLength: Toast.LENGTH_SHORT,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.orange.withOpacity(0.5),
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text("Tap Here"),
              onPressed: () {
                // _showSnackbar();
                _showToast();
              },
            ),
            RaisedButton(
              child: Text("new Tab"),
              onPressed: () {
                Route route = MaterialPageRoute(builder: (context) => NewTab());
                Navigator.push(context, route);
              },
            ),
          ],
        ),
      ),
    );
  }
}
