import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  List peaple = [
    {"name": "Tawhid", "email": "tawhid1.lubnan@gmail.co,"},
    {"name": "Abir", "email": "tawhid2.lubnan@gmail.co,"},
    {"name": "Ihan", "email": "tawhid3.lubnan@gmail.co,"},
    {"name": "Inaya", "email": "tawhid4.lubnan@gmail.co,"},
    {"name": "Sawdan", "email": "tawhid5.lubnan@gmail.co,"},
    {"name": "Tawhid", "email": "tawhid1.lubnan@gmail.co,"},
    {"name": "Abir", "email": "tawhid2.lubnan@gmail.co,"},
    {"name": "Ihan", "email": "tawhid3.lubnan@gmail.co,"},
    {"name": "Inaya", "email": "tawhid4.lubnan@gmail.co,"},
    {"name": "Sawdan", "email": "tawhid5.lubnan@gmail.co,"},
    {"name": "Tawhid", "email": "tawhid1.lubnan@gmail.co,"},
    {"name": "Abir", "email": "tawhid2.lubnan@gmail.co,"},
    {"name": "Ihan", "email": "tawhid3.lubnan@gmail.co,"},
    {"name": "Inaya", "email": "tawhid4.lubnan@gmail.co,"},
    {"name": "Sawdan", "email": "tawhid5.lubnan@gmail.co,"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: peaple.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.orange.withOpacity(0.2),
                  child: Text(peaple[index]["name"][0]),
                ),
                title: Text(peaple[index]["name"]),
                subtitle: Text(peaple[index]["email"]),
              ),
            ],
          );
        },
      ),
    );
  }
}
