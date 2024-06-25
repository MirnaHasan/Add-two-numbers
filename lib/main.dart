

import 'package:flutter/material.dart';


void main(){
  runApp (const WritingName());
}
class WritingName extends StatefulWidget {
  const WritingName({super.key});

  @override
  State<WritingName> createState() => _WritingNameState();
}

class _WritingNameState extends State<WritingName> {
 TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar( backgroundColor: Colors.blueGrey,
          title: const Text("writting names", 
        style: TextStyle(
          fontSize: 40, 
          fontWeight: FontWeight.bold,

        ),),
        centerTitle: true,),
        body: 
         Center(
          child: Form(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text("WRITTING YOUR NAMES ", style: TextStyle(
                  fontSize: 30, 
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: TextFormField( 
                  controller: name,
                  
                    decoration: InputDecoration( fillColor: const Color.fromARGB(255, 168, 203, 203),
                    filled: true,
                      labelText: " Enter Your Name,PLZ ",
                      labelStyle: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigoAccent,
                      ),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(37),)
                    ),
                  ),
                ),
                MaterialButton( color: Colors.blue,
                  onPressed: (){     
             
                  },

               
                
               
                ),
                 Text("$name"),
              ],
            ),
          ),
        ),
      ),
    );
    
  }
  
  }

  
