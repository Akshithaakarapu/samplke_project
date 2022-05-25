import 'package:flutter/material.dart';
import 'package:task_13/second.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({ Key? key }) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //appBar: AppBar(),
      body:Column(
        children: [
          Container(
            
            height: 300,
            width: 400,
            color: Color.fromARGB(255, 44, 47, 215),
            child: Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Column(
                children: [
                  Icon(Icons.tiktok,color: Colors.white,size: 100,),
                  Text("Tiktok",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromARGB(255, 244, 244, 243),
                ),
                
                child: TextField(
                  decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 10),
                        hintText: 'Email',
                      ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            
            child: Container(
              height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromARGB(255, 244, 244, 243),
                ),
                  child: TextField(
                    obscureText: true,
                  decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all( 10),
                        hintText: 'password',
                        suffixIcon: Icon(
                          Icons.visibility,
                        )
                      ),
                ),
                
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              height: 40,
              width: 250,
              child:ElevatedButton(
                child: Text('Login',style: TextStyle(color: Color.fromARGB(255, 250, 248, 248),fontSize: 15,fontWeight: FontWeight.bold),),
                onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {  
                 return Second();
               }),);
                }
              ),
              
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              child: Text("forgot password",style: TextStyle(color: Colors.black,fontSize: 15,),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              child: Text("----- or -----",style: TextStyle(color: Colors.black,fontSize: 15,),),
            ),
          ),
         
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
            
              children: [
                
                Icon(Icons.facebook,
                size: 38,color: Colors.blue,),
                SizedBox(
                  width: 40,
                ),
                
                Icon(Icons.whatsapp,
                size: 38, color: Colors.green,),
                SizedBox(
                  width: 40,
                ),
                Icon(Icons.share,
                size: 30,),
                
              ],
              
              
            ),
          ),
        ],
        
      ),
      
    );
  }
}