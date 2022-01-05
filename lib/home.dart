import 'package:flutter/material.dart';
void main(){
  runApp(MyHome());
}
class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My home',
      home: HomeWidget(),
    );
  }
}
class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        child: Row(
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}

