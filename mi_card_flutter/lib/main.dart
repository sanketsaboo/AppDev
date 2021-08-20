import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/Naruto1.jpg'),
              ),
              Text(
                'Naruto Uzumaki',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico'),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.teal.shade100,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'SourceSansPro',
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 130.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Container(
                // color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
                padding: EdgeInsets.all(12.5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5), //border corner radius
                  boxShadow:[ 
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5), //color of shadow
                        spreadRadius: 5, //spread radius
                        blurRadius: 7, // blur radius
                        offset: Offset(0, 2), // changes position of shadow
                        //first paramerter of offset is left-right
                        //second parameter is top to down
                    ),
                  ],
                ),
                child: Row(
                  
                  children: [
                    Icon(Icons.phone,
                    size: 30,
                    color: Colors.teal),
                    SizedBox(
                      width: 30.0,
                    ),
                    Text(
                      '+91 9876543210',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
                child: ListTile(
                  leading: Icon(Icons.email,
                    size: 30,
                    color: Colors.teal),
                  title: Text(
                      'dattebayo@gmail.com',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0,
                      ),
                    ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

