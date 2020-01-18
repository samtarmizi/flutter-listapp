import 'package:flutter/material.dart';
import 'package:list_app/model/student.dart';

class Screen2 extends StatefulWidget {
  final Student objectPassed;
  Screen2({Key key, this.objectPassed}): super(key: key);

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('${widget.objectPassed.nama} ${widget.objectPassed.age}'),
            RaisedButton(
              child: Text('Screen 3'),
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(
                //   builder: (context) => Screen3()
                // ));
                Navigator.pushNamed(context, '/screen3');
              },
            ),
          ],
        ),
      ),
    );
  }
}
