import 'dart:async';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int timeLeft = 60;
  ///int trch = 1;

  ///void _stopCountDown() {
    ///trch = 0;
  ///}


  @override
  void _startCountDown() {
      Timer.periodic(Duration(seconds: 1), (timer) {
        if (timeLeft > 0) {
          setState(() {
            timeLeft--;
          });
        }
      });
  }


  ///@override
  ///void restartCount() {
    ///_startCountDown.cancel();
  ///} функция сброса

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  timeLeft == 0 ? 'DONE' : timeLeft.toString(),
                  style: TextStyle(fontSize: 70),
                ),
                MaterialButton(
                  onPressed: _startCountDown,
                  child: Text(
                    'S T A R T',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.deepPurple,
                ),
               /// MaterialButton(
                   ///onPressed: _stopCountDown,
                   /// child: Text(
                        ///'S T O P',
                        ///style: TextStyle(color: Colors.black),
                   /// )
               /// )
              ],
            )
        )
    );
  }
}