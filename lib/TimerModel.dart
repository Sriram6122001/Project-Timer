import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'TimerModel.g.dart';
// Create a class with a name TimerModel and assign the class named _TimerModelBase with mixin named _$TimerModel to it.
class TimerModel = _TimerModelBase with _$TimerModel;

// Declare the class _TimerModelBase with a mixin Store.
abstract class _TimerModelBase with Store{
 
 // Create a instance for the StreamController.
 StreamController dataflow = StreamController();

 // Declare a variable named timer of type Timer.
 Timer? timer;

 // Declare a variable named minutes of type Timer.
 Timer? minutes;

 // Declare a variable named sec of type int, make it as observable.
 @observable
 int sec=0;

// Declare a variable named min of type int, make it as observable.
 @observable
 int min=0;

// Declare a variable named buttonstatus of type String and initialize it as start, make it as observable.
 @observable
 String buttonstatus="Start";

// Declare a variable named buttoncounter and initialize it as 0
int buttoncounter=0;

/* Create a void method named setSeconds with a named parameter with a variable named sec of type int and using the arrow function assign the parameter sec to the variable sec*/
void setSeconds({required int sec})=>this.sec = sec;

/* Create a void method named setMinutes with a named parameter with a variable named min of type int and using the arrow function assign the parameter min to the variable min*/
void setMinutes({required int min})=>this.min = min;

/* Create a void method named setButtonStatus with a named parameter with a variable named buttonstatus of type String and using the arrow function assign the parameter buttonstatus to the variable buttonstatus*/
void setButtonStatus({required String buttonstatus})=>this.buttonstatus=buttonstatus;



}