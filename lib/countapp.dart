import 'package:flutter/material.dart';

class MyApp1 extends StatelessWidget {
  const MyApp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStateFulWidget(),
    );
  }
}
class MyStateFulWidget extends StatefulWidget {
  const MyStateFulWidget({Key? key}) : super(key: key);

  @override
  _MyStateFulWidgetState createState() => _MyStateFulWidgetState();
}

class _MyStateFulWidgetState extends State<MyStateFulWidget> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample Code'),
      ),
      body: Center(
        child: Text('You have pressed the buuton $_count times'),
      ),
      floatingActionButton: FloatingActionButton(
        //add icon
        child: Icon(Icons.add),
        // action
        onPressed: (){
          setState(() {
            _count++;
          });
        },
        // Hien thi text khi tro chuot vao button
        tooltip: 'Increment Counter',
      ),
    );
  }
}

