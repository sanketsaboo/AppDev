import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}
class _DicePageState extends State<DicePage> {
    var leftDiceNumber=1;
    var rightDiceNumber=4;
@override
  Widget build(BuildContext context) {


    return Center(
      child: Row(
        children: <Widget>[

          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
            leftDiceNumber=Random().nextInt(6)+1;
            rightDiceNumber=Random().nextInt(6)+1; 
        });
                  print('Left Image is pressed');
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
             
            ),  
          
          // SizedBox(
          //   width: 50.0,
          // ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: (){
                  setState(() {
            leftDiceNumber=Random().nextInt(6)+1;
            rightDiceNumber=Random().nextInt(6)+1; 
        });
                  print('Right Image is pressed');
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),  
          ),
        ],
      ),
    );
  }
}


