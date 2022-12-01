import 'package:flutter/material.dart';
import 'package:flutter_application_1/inscrit.dart';
import 'package:flutter_application_1/mdpoblier.dart';

class Connexion extends StatefulWidget {
  const Connexion({ Key? key }) : super(key: key);

  @override
  State<Connexion> createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
   String email = '';
    String password = '';

    final _formkey = GlobalKey<FormState>();
  
 final emailEditingController  = new TextEditingController();
final passwordEditingController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
           padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
          child: Form(
            child: 
          Column(
             crossAxisAlignment: CrossAxisAlignment.stretch,
             children: <Widget>[
                Text('Login',textAlign: TextAlign.center,style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30      
                  ),
                ),
                SizedBox(height: 30,),
               TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(

                   ),
                ),
                validator: (val){
       
        if (val!.isEmpty) {
                    return ("Please Enter your email");
                    }
                    if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(val))
                    {
                       return("Please Enter valid email");
                    }
                    return null;
     },
     onSaved: (val){
       emailEditingController.text = val!;
     },
               ),
              SizedBox(height: 30,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(

                   ),
                ),
                obscureText: true,
                validator: (val){
        RegExp regex = new RegExp(r'^.{6,}$');
        if (val!.isEmpty) {
                   return ("Please Enter your password");
                  }
                  if (!regex.hasMatch(val))
                  {
                    return("Enter Valid Password(Min. 6 character");
                  }
      },
      onSaved: (val){
       passwordEditingController.text = val!;
     },
               ),
           SizedBox(height: 10,),
               FlatButton(
                
                onPressed: (){},
                color: Colors.blue, 
               child: Text('LOGIN', textAlign: TextAlign.center),
               shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)
               ),
               ),
                 FlatButton(
                   child: Text("FORGOT PASSWORD",
                   style: TextStyle(color: Colors.black)),
                    onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Mdpoblier(
                    ))
                     ),
                   ),
                   SizedBox(height: 10,),
                FlatButton(
                   child: Text("DON'T HAVE AN ACCOUNT?",
                   style: TextStyle(color: Colors.black)),
                    onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Inscription())
                     ),
                   ),
             ],
          ),
        ),
      ),
    ));
  }
}