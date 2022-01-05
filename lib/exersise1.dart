import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AppDemo(),
    );
  }
}

class AppDemo extends StatefulWidget {
  const AppDemo({Key? key}) : super(key: key);

  @override
  _AppDemoState createState() => _AppDemoState();
}

class _AppDemoState extends State<AppDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.west_outlined,
            color: Colors.black,
          ),
          title: Text(
            'Order#123272',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.white24,
        ),
        
        body: SafeArea(
          child : Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.file_download_outlined,
                    color: Colors.grey,
                  ),
                  Text('Download invoice',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),)
                ],
              ),
              Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Date',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '12 Mar 2021',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      Column(children: [
                        Text(
                          'Detail',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '#1234599',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],),
                    ],
                  ),
                  Row(children: [
                    Column(
                      children: [
                        Text(
                          'Method',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Card payment',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    Column(children: [
                      Text(
                        'Transaction no',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '121323',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],),
                  ],),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Status',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            width: 100.0,
                            height:  30.0,
                            //color: Colors.green.shade400,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(4.0),
                            decoration: new BoxDecoration(
                                color: Colors.green.shade300,
                                borderRadius: new BorderRadius.only(
                                  topLeft: const Radius.circular(5.0),
                                  topRight: const Radius.circular(5.0),
                                  bottomLeft: const Radius.circular(5.0),
                                  bottomRight: const Radius.circular(5.0),
                                )
                            ),
                            child: Text(
                              'Success',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Booking Reference',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'NYE Party',
                            style: TextStyle(
                              color: Colors.orangeAccent,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),],
                  ),
                  Row(children: [
                    Column(
                      children: [
                        Text(
                          'Total Payment',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '-ADE 25,000',
                          style: TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ],)
                ],
              ),
            ),],
          )
          
    ));
  }
}
