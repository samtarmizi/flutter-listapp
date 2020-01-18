import 'package:flutter/material.dart';
import 'package:list_app/screen2.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final controller1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextField( controller: controller1,),
            RaisedButton(
              child: Text('Screen 1'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen2(objectPassed: controller1.text)));
                print(controller1.text);
              },
            ),
          ],
        ),
      ),
    );
  }
}
