import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'TimerViewModel.dart';
import 'package:google_fonts/google_fonts.dart';

class TimerScreen extends StatelessWidget {
   TimerScreen({super.key});
 TimerViewModel _timerViewModel = TimerViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
        body: SafeArea(child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Text("Hi Creator!..",style: GoogleFonts.aladin(fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(
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
                    SizedBox(
                      height: 50,
                    ),
                    Text("Timer",style: GoogleFonts.arya(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 150,
                    ),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Observer(
                        builder: (context) {
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
                  child: ElevatedButton(onPressed: (
                  ){
                    _timerViewModel.forSeconds().toString();
                  },
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

