import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});
    Expanded buildKey(Color rang , int Number){
      return Expanded(
      child:
       Container (
      padding: EdgeInsets.all(5.0),
      color: rang,
      child: TextButton(
        child: Text(''),
        onPressed: ()  async{
          final player = AudioPlayer();
          player.play(AssetSource('note$Number.wav'));
        },
      ),
       )

    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Xylophone'
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.red,1),
              SizedBox(
               height: 10.0,
              ),
              buildKey(Colors.orange,2),
              SizedBox(
                height: 10.0,
              ),
              buildKey(Colors.yellow,3),
              SizedBox(
                height: 10.0,
              ),
              buildKey(Colors.green,4),
              SizedBox(
                height: 10.0,
              ),
              buildKey(Colors.blue,5),
              SizedBox(
                height: 10.0,
              ),
              buildKey(Colors.indigo,6),
              SizedBox(
                height: 10.0,
              ),
              buildKey(Colors.purple,7),
            ],
          ),

        ),

      ),
    );
  }
}
