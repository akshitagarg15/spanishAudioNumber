import 'package:flutter/material.dart';
import 'NumberAudio.dart';
import 'package:audioplayers/audio_cache.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // object of class
  AudioCache audioPlayer=AudioCache();

  // array of all audios
  List<NumberAudio>  numberList=[
    NumberAudio("one.wav", Colors.red, "One"),
    NumberAudio("two.wav", Colors.indigo, "Two"),
    NumberAudio("three.wav", Colors.teal, "Three"),
    NumberAudio("four.wav", Colors.amber, "Four"),
    NumberAudio("five.wav", Colors.pink, "Five"),
    NumberAudio("six.wav", Colors.yellow, "Six"),
    NumberAudio("seven.wav", Colors.green, "Seven"),
    NumberAudio("eight.wav", Colors.blue, "Eight"),
    NumberAudio("nine.wav", Colors.orange, "Nine"),
    NumberAudio("ten.wav", Colors.purple, "Ten"),
  ];

  // a function 
  play(String uri){
    // It automatically adds audioPlayer.play(assets/uri);
    audioPlayer.play(uri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Spanish Numbers"),
      ),
      body:Container(
          child: Center(
            child:Column(
              children: <Widget>[
                Image(
                  image: AssetImage("images/logo.png"),
                  ),
                  Expanded(
                    child:GridView.builder(
                      padding: EdgeInsets.all(10.0),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 2.0,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                      ),
                        itemCount: numberList.length,
                       itemBuilder: (context,index)=> SizedBox(
                         width:100.0,
                         height:50.0,
                         child:RaisedButton(
                           color: numberList[index].buttonColor,
                           child: Text(numberList[index].buttonText,style: TextStyle(fontSize: 20.0,color: Colors.black),),
                           onPressed: (){
                             play(numberList[index].audioUri);
                           },

                         )
                       )
                       ), 
                    ),
              ],
              ) ,
            ),
        )
    );
  }
}