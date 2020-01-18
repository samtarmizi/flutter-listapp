import 'package:flutter/material.dart';
import 'package:list_app/screen2.dart';
  
class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Screen 1'),
        ),
        body: Center(
          child: Container(
            child: RaisedButton(
              child: Text('Screen 1'),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Screen2()
                ));
              },
            ),
          ),
        ),
      );
  }
}