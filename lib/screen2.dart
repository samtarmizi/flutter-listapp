import 'package:flutter/material.dart';
import 'package:list_app/screen3.dart';
  
class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Screen 2'),
        ),
        body: Center(
          child: Container(
            child: RaisedButton(
              child: Text('Screen 3'),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Screen3()
                ));
              },
            ),
          ),
        ),
  
    );
  }
}