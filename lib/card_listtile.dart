import 'package:flutter/material.dart';

class CardDemo extends StatelessWidget {
  const CardDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CardDemoWidget(),
    );
  }
}
class CardDemoWidget extends StatefulWidget {
  const CardDemoWidget({Key? key}) : super(key: key);

  @override
  _CardDemoWidgetState createState() => _CardDemoWidgetState();
}

class _CardDemoWidgetState extends State<CardDemoWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/cat.jpg'),
              radius: 50.0,
            ),
            Text(
              'Nga Doan',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'DEVELOPER FLUTTER',
              style: TextStyle(
                fontFamily: '',
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(Icons.phone,
                color: Colors.teal,),
                title: Text(
                  '0868109863',
                  style: TextStyle(
                    color: Colors.teal
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(Icons.email,
                  color: Colors.teal,),
                title: Text(
                  'doannga1234@gmail.com',
                  style: TextStyle(
                      fontFamily: 'RobotoMono',
                      color: Colors.teal
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
