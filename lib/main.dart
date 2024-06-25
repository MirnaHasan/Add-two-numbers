

import 'dart:developer';// this is library of log

import 'package:add_two_numbers/pageTwo.dart';
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
 int count = 0;
 @override
  void initState() {

name.text = "your name mirnaaaaaaaaaa";
log('message initState');
    // اثناء فتح الشاشة  يتم الاستدعاء
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
// هي اثناء غلق الشاشة 
    log('message dispose');
name.dispose();

    // TODO: implement dispose
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    log('message to rebuild method ${count++}');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
          child: SingleChildScrollView(
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
                child: const Text("حول الاسم ",)  ,
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) => const PageTwo(),),);     
                    // Navigator.push(context, MaterialPageRoute(builder: (_) => const PageTwo(),),);
             // هنا يصير فقط اعادة بناء لدلة build
             // حتى اخذ النص من التيكست فروم فيلد عندي  كونترول   الي السمه name 
             // aشوفي وتابعي 
            //بهاي الطريقة اخذ النصم من التيكست فروم فيلد  واحوله الى سترنك
// log('message name Log :- ${name.text}');
// print('message name print :- ${name.text}');
            
                  },

            
                ),
                // هنا خطأك ماغيرتي الى سترنك فقط تاابعي
                 Text(" name is :- ${name.text}",style: const TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.bold,
                   color: Colors.indigoAccent,
                 ),),
              ],
            ),
          ),
        ),
      ),
    );
    
  }
  
  }

  
