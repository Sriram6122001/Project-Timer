import 'dart:async';
import 'TimerModel.dart';

// Create a class named TimerViewModel which inherits the class TimerModel
class TimerViewModel extends TimerModel{

/* Create a void method named forMinutes  */
 void forMinutes()
 {
  // Increment the variable named min
  min++;

  // Check whether the min is equal to 90.
  if(min==90)
  {
    /* Call the setMinutes method and the value 0 to the parameter */
    setMinutes(min: 0);
  }
 }
 
 /* Create a void method named forMinutes */
 void forSeconds()
 {
  // Increment the buttoncounter 
  buttoncounter++;

  // Check whether the buttoncounter modulus of 2 is not equal to 0.
  if(buttoncounter%2!=0)
  {
    /* Call the setButtonStatus method and pass the String "Stop" as the parameter.*/
    setButtonStatus(buttonstatus: "Stop");

    // Assign a Periodic Timer with a duration of 1 second to the variable named timer
    timer= Timer.periodic(Duration(seconds: 1), (timer) { 

    // Increment the sec 
    sec++;

    // Check whether the sec is equal to 60.
    if(sec==60)
    {
      /* Call the forMinutes().*/
      forMinutes();

      /* Call the setSeconds method and the pass the value 0.*/
      setSeconds(sec: 0);
    }
    // Check whether the min is equal to 90.
    if(min==90)
    {
      /* Call the resetCountDown method  */
      resetCountDown();
    }
  });
  }

  //else
  else{
    
    /* Call the method setButtonStatus and pass the String as parameter  */
    setButtonStatus(buttonstatus: "Start");

    /* Call the stopTimer method */
    stopTimer();
  }
 }
 
 /* Create a void method named stopTimer() */
 void stopTimer()
 {
  // Cancel the timer
    timer!.cancel();
 }

/* Create a void method named resetCountDown() */
 void resetCountDown()
 {
  /* Call the setSeconds method and pass the value as 0 */
  setSeconds(sec: 0);
  /* Call the setMinutes method and pass the value as 0 */
  setMinutes(min: 0);
 }
}


