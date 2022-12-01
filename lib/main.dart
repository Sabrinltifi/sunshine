import 'package:flutter/material.dart';
import 'package:flutter_application_1/connexion.dart';
import 'package:flutter_application_1/inscrit.dart';
import 'inscrit.dart';
import 'connexion.dart';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    )
    );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      body: SingleChildScrollView(
      child: Container(
         padding: EdgeInsets.symmetric(vertical: 60.0, horizontal: 30.0),
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
             Column(
              crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("Welcome", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30      
                  ),),
                  SizedBox(height: 30,),
                ],
             ),
            Column(
              children: [
                CircleAvatar(
                  radius: 200,
                 
                  child: CircleAvatar(
                    radius: 200,
                    backgroundImage: AssetImage('assets/images/education.jpg'),
                  ),
                )
                //Image.asset('assets/images/education.jpg'),
              ],
            ),
            SizedBox(height: 30,),
             Column(
              children: [
               ElevatedButton(
        
        onPressed: () => Navigator.push(
            
          context,MaterialPageRoute(builder: (context) => Inscription())),
             
           
           
         child: Text("GET STARTED"),
         ),
              ],
             )
          ],
        ),
      ),
      ),
    );
  }
}

