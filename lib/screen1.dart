import 'package:flutter/material.dart';
import 'package:list_app/model/student.dart';
import 'package:list_app/screen2.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final _controllernama = TextEditingController();
  final _controllerage = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextField( controller: _controllernama,),
            TextField( controller: _controllerage,),
            RaisedButton(
              child: Text('Screen 1'),
              onPressed: () {
                Student student;
                // student.nama = _controllernama.text;
                // student.age = _controllerage.text;

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen2
                    (objectPassed: Student( _controllernama.text, _controllerage.text))
                    ));
                print(_controllernama.text);
                print(_controllerage.text);
              },
            ),
          ],
        ),
      ),
    );
  }
}
