import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'TimerModel.g.dart';

class TimerModel = _TimerModelBase with _$TimerModel;

abstract class _TimerModelBase with Store{
 
 StreamController dataflow = StreamController();
 Timer? timer;
 Timer? minutes;
 @observable
 int sec=0;
 @observable
 int min=0;
 @observable
 String buttonstatus="Start";
int buttoncounter=0;

setSeconds({required int sec})=>this.sec = sec;
setMinutes({required int min})=>this.min = min;
setButtonStatus({required String buttonstatus})=>this.buttonstatus=buttonstatus;



}