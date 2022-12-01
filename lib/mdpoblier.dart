import 'package:flutter/material.dart';
import 'package:flutter_application_1/connexion.dart';

class Mdpoblier extends StatefulWidget {
  const Mdpoblier({ Key? key }) : super(key: key);

  @override
  State<Mdpoblier> createState() => _MdpoblierState();
}

class _MdpoblierState extends State<Mdpoblier> {
   final emailcontroller = TextEditingController();

  
  String email ='';
  final keys =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(15),
            child: Form(
              key: keys,
              child: Column(
               children: [
                 Text("Login",style: TextStyle(fontSize: 30),
                 ),
                 SizedBox(height: 15,
                 ),
                 TextFormField(
                   controller: emailcontroller,
                   keyboardType: TextInputType.emailAddress,
                   onChanged: (e) => email =e,
                   validator: (e) => e!.isEmpty ? "champ vide" :null,
                   decoration: InputDecoration(
                     hintText: "Entrer votre email", 
                     labelText: "Email"
                    ),
                 ),
                 SizedBox(height: 10,
                 ),
                 ElevatedButton(
                   onPressed: (){},
                    child: Text("Envoyer"))
               ],
              )),
          )
          )
      ),
    );
  }
}