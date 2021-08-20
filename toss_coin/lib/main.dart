import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text('Toss The Coin'),
          backgroundColor: Colors.black,
        ),
        body: CoinTossPage(),
      ),
    ),);
}


class CoinTossPage extends StatefulWidget {

  @override
  _CoinTossPageState createState() => _CoinTossPageState();
}

class _CoinTossPageState extends State<CoinTossPage> {
    var diceValue;
    int constDiceValue=0;
    String result='Tap on the coin';
  @override
   Widget build(BuildContext context) {

  
    return Scaffold(
      backgroundColor: Colors.grey[900],
      
      body: Center(
        
        child: Column(  
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.yellowAccent[700],
               maxRadius:150 ,
              
              child: TextButton(
                
                onPressed: (){
                  setState(() {
                    diceValue=Random().nextInt(200)+1;
                    print('$diceValue');
                      if(diceValue%2==0){
                      constDiceValue=2;
                      result='It\'s a Heads';
                      // print('It\'s a Heads $constDiceValue');
                    }
                    else{
                      constDiceValue=1;
                      result='It\'s a Tails';
                      // print('It\'s a Tails $constDiceValue');
                    }
            
                    }
             
                  );
                  // print('The dicevalue is $diceValue');
                // print('Button Is being pressed');
                },
                child: Image.asset('images/coin$constDiceValue.png'),
                ),
            ),
          SizedBox(
            width: double.infinity,
            height: 50,
          ),
          Text(
            '$result',
            style: TextStyle(
            fontSize: 30,
            color: Colors.white
          ),
          ),
          Text(
            '$diceValue',
            style: TextStyle(
            fontSize: 10,
            color: Colors.white
          ),
          ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}