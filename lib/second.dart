import 'package:flutter/material.dart';
import 'package:task_13/third.dart';

class Second extends StatefulWidget {
  const Second({ Key? key }) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
   bool value = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       //resizeToAvoidBottomInset: false,
     // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Container(
              margin: EdgeInsets.only(bottom: 10),
              height: 200,
              width: 500,
              color: Colors.amberAccent,
              child: Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Column(
                  children: [
                    
                    Icon(Icons.tiktok,
                    size: 60,),
                    Text('Tiktok',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [              
                Text('First name: ',style:TextStyle(color: Colors.black,fontSize: 14),),
                Container(
                   margin: EdgeInsets.only(right: 27),
                  height: 30,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromARGB(255, 246, 244, 244),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all( 17),
                      
                      ),
                  ),  
                ),             
                Row(               
                children: [                  
                    Text('Second name:',style:TextStyle(color: Colors.black,fontSize: 14),)
                  ],
                ),
                 Container(
                  height: 30,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromARGB(255, 246, 244, 244),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all( 17),
                      ),
                  ), 
                ),
              ],
            ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Email:',style:TextStyle(color: Colors.black,fontSize: 14),),
                    Container(
                      margin: EdgeInsets.only(top: 7),
                  height: 30,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromARGB(255, 246, 244, 244),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                       contentPadding: EdgeInsets.all( 17),
                      //textmiddle
                      ),
                  ), 
                ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 220),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Conformpassword:',style:TextStyle(color: Colors.black,fontSize: 14),),
                      Container(
                        margin: EdgeInsets.only (top: 7),
                    height: 30,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 246, 244, 244),
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                       contentPadding: EdgeInsets.all( 17),
                        ),
                    ), 
                  ),                
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Checkbox(
                        
                                  value: this.value,
                                  onChanged: (value) {
                                    setState(() {
                                      this.value = value!;
                                     
                                    });
                                  }
                                ),
                                Text('Agree',style: TextStyle(color: Colors.black,fontSize: 15),)
                    ],
                  ),
                ),
                 Container(
                   margin: EdgeInsets.only(top: 10),
                  height: 30,
                  width: 150,
                  child: ElevatedButton(child: Text('Login'),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
                      return Third();
                     }),);
                  },
                  
                  ), 
                ),
                  ],
            ),
      ),    
    );
  }
}