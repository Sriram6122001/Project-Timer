import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'TimerViewModel.dart';
import 'package:google_fonts/google_fonts.dart';

// Create a statelessWidget named TimerScreen
class TimerScreen extends StatelessWidget {

   TimerScreen({super.key});

// Create a instance named _timerViewModel for the class TimerViewModel.
 TimerViewModel _timerViewModel = TimerViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
        body: SafeArea(child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Text("Hi Creator!..",style: GoogleFonts.aladin(fontSize: 25,fontWeight: FontWeight.bold),),
            const SizedBox(
              height: 75,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 400,
                width: 250,
                decoration: BoxDecoration(color: Color(0xffCAF0F8),borderRadius: BorderRadius.circular(10),),
                child: 
               
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Text("Timer",style: GoogleFonts.arya(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 150,
                    ),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Observer(
                        builder: (context) {

                          //Return a text widget and consume the data min using the instance _timerViewModel
                          return Text(_timerViewModel.min.toString(),style: GoogleFonts.aclonica(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.black),);
                        }
                      ),
                      Observer(
                        builder: (context) {
                          return Text(":",style: GoogleFonts.aclonica(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.black),);
                        }
                      ),
                      Observer(
                        builder: (context) {

                          //Return a text widget and consume the data sec using the instance _timerViewModel
                          return Text(_timerViewModel.sec.toString(),style: GoogleFonts.aclonica(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.black),);
                        }
                      ),
                    ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 75,
            ),
            Observer(
              builder: (context) {
                return Container(
                  height: 50,
                  width:100,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: ElevatedButton(onPressed: (){

                    /* call the forSeconds method as function Signature using the instance _timerViewModel.*/
                    _timerViewModel.forSeconds.toString();
                  },

                  // Create a text Widget and consume the buttonstatus using the instance _timerViewModel
                   child: Text(_timerViewModel.buttonstatus,style: GoogleFonts.arya(color: Colors.white,fontSize: 20)),
                   style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blueGrey),
                   elevation: MaterialStatePropertyAll(50)) ,),
                );
              }
            ),
            


        ],)
        )
    );
  }
}

