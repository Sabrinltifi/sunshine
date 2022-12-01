import 'package:flutter/material.dart';
import 'package:flutter_application_1/connexion.dart';
class Inscription extends StatefulWidget {
  const Inscription({ Key? key }) : super(key: key);

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  String email = '';
  String fullName = '';
  String password = '';
  String userName = '';
  String profilPicture= '';
  String phone = '';

  final _formkey = GlobalKey<FormState>();
  
 final emailEditingController  = new TextEditingController();
final passwordEditingController = new TextEditingController();
 final usernameEditingController  = new TextEditingController();
  final fullnameEditingController  = new TextEditingController();
final phoneEditingController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: EdgeInsets.only(right:10),
            child: IconButton(
              color: Colors.amber,
              icon: Icon(Icons.login),
              iconSize: 30,
              onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => Connexion(),));
              }
              )
            )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text('SignUp',textAlign: TextAlign.center,style: TextStyle(
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
                  labelText: 'Full Name',
                  border: OutlineInputBorder(

                   ),
                ),
                validator: (val){ 
                  RegExp regex = new RegExp(r'^.{3,}$');
       if (val!.isEmpty)
       {
         return ("FullName cannot be Empty");
       }
       if (!regex.hasMatch(val)){
         return ("Enter valid FullName(Min. 3 character)");
       }
       return null;
                
                },
                onSaved: (val){
                  fullnameEditingController.text = val!;
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
                SizedBox(height: 30,),
               TextFormField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(

                   ),
                ),
                validator: (val){ 
                  RegExp regex = new RegExp(r'^.{3,}$');
       if (val!.isEmpty)
       {
         return ("UserName cannot be Empty");
       }
       if (!regex.hasMatch(val)){
         return ("Enter valid UserName(Min. 3 character)");
       }
       return null;
                
                },
                onSaved: (val){
                  usernameEditingController.text = val!;
                },
               ),
                SizedBox(height: 30,),
               TextFormField(
                decoration: InputDecoration(
                  labelText: 'Profil Picture',
                  border: OutlineInputBorder(

                   ),
                ),
               ),
                SizedBox(height: 30,),
               TextFormField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(

                   ),
                ),
               ),
               SizedBox(height: 10,),
               FlatButton(
                
                onPressed: (){},
                color: Colors.blue, 
               child: Text('SIGNUP', textAlign: TextAlign.center),
               shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)
               ),
               )
          
              ],
            ),
          ),
        ),
        )
      
    );
  }
}