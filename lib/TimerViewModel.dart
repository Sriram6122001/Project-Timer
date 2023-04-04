import 'dart:async';

import 'package:flutter/material.dart';
import 'TimerModel.dart';

class TimerViewModel extends TimerModel
{
 forMinutes()
 {
  min++;
  if(setMinutes(min: min)==90)
  {
    setMinutes(min: 0);
  }
 }
 
 forSeconds()
 {
  buttoncounter++;
  if(buttoncounter%2!=0)
  {
    setButtonStatus(buttonstatus: "Stop");
    timer= Timer.periodic(Duration(seconds: 1), (timer) { 
    sec++;
    if(setSeconds(sec: sec)==60)
    {
      forMinutes();
      setSeconds(sec: 0);
    }
    if(setMinutes(min: min)==90)
    {
      resetCountDown();
    }
  });
  }
  else{
    setButtonStatus(buttonstatus: "Start");
    stopTimer();
  }
 }
 
 void stopTimer()
 {
    timer!.cancel();
 }

 void resetCountDown()
 {
  setSeconds(sec: 0);
  setMinutes(min: 0);
 }
}


