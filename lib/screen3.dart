import 'package:flutter/material.dart';
import 'package:list_app/screen1.dart';
  
class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Screen 3'),
        ),
        body: Center(
          child: Container(
            child: RaisedButton(
              child: Text('Screen 3'),
              onPressed: (){
                // Navigator.pop(context);
                Navigator.of(context).pushNamedAndRemoveUntil
                ('/screen1', (Route<dynamic> route) => false);
              },
            ),
          ),
        ),
  
    );
  }
}