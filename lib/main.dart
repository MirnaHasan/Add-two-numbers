import 'package:flutter/material.dart';



void main(){
  runApp(AddNumbers());
}

class AddNumbers extends StatefulWidget {
  const AddNumbers({super.key});

  @override
  State<AddNumbers> createState() => _AddNumbersState();
}

class _AddNumbersState extends State<AddNumbers> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
home: Scaffold(
  appBar: AppBar(
    title: Text("ADD NUMBERS"),
    centerTitle: true,
  ),
  body:  Column( mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("ADD TWO NUMBERS ", style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, 
            color: Colors.pinkAccent,

          ),), 
         TextFormField(
          decoration: InputDecoration( 
      
            hintText: "Enter The First Number", 
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),),
          ),
         ),
         Container(height: 10,),
          TextFormField(
          decoration: InputDecoration(
            hintText: "Enter The Second Number", 
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),),
          ),
         ),
         MaterialButton( color: Colors.pink,
          onPressed: (){}, 
         child: const Text("ADD THE NUMBERS"),)

        ],
      )

  ,
),

    );
  }
}
