import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Stack(
        children: [
          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.only(bottom: 150.0),
              color: Colors.white,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  child: Text("LogOut"),
                ),
              ),
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.4,
            child: Container(
              child: Image.asset(
                "assets/2.png",
                fit: BoxFit.cover,
              ),
              color: Colors.green,
            ),
          ),
          Positioned(
            top: 100.0,
            left: 50.0,
            right: 50.0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 15.0),
              height: 500.0,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset("assets/user.jpg",width: 150,height: 150.0,),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text("Rakesh Gupta",style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft:Radius.circular(145.0),bottomRight:Radius.circular(145.0),topLeft: Radius.circular(10.0),topRight: Radius.circular(10.0)),
                  color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 1.5,
                    spreadRadius: 3.0,
                    offset: Offset(1.0, 3.0))
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
