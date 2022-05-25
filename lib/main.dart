import 'package:flutter/material.dart';
import 'package:task_13/First.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromARGB(255, 15, 79, 109),
      //appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Column(
            
            children: [
            Icon(Icons.tiktok,color: Colors.white,
            size: 100,),
            Text("Tiktok",style:TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
            
        
          

       
         Container(
           margin: const EdgeInsets.only(top: 300),
           height: 40,
           width: 200,
           child: ElevatedButton(
             child:Text("sign In",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
             onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
               return  Homescreen();
              }),);
             },),
             
         ),
         SizedBox(
           height: 15,
         ),
          
          Text("Sign up",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
         

       
          ]),
        ),
      ),
    );
  }
}
