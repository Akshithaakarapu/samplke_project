import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:task_13/main.dart';

class Third extends StatefulWidget {
  const Third({ Key? key }) : super(key: key);

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: false,
      //appBar: AppBar(),
      body: Center(
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Thank you',style: TextStyle(color: Color.fromARGB(255, 221, 57, 202),fontSize: 50,fontWeight: FontWeight.bold)),
            
Container(
                 margin: EdgeInsets.only(top: 40),
                height: 30,
                width: 130,
                child: TextButton(child: Text('Back to home'),
                onPressed: (){
                 
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context) { 
                    return MyHomePage();
                   }),(route) => false);
                   
                },
                
                ), 
              ),
              
            
          ],
        ),
      ),
    );
  }
}