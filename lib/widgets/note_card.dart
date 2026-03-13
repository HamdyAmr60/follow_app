

import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: double.infinity,
        height: 200,
          padding: const EdgeInsets.all(18.0),
        decoration: BoxDecoration(
          color:Colors.yellow.shade300,
          borderRadius: BorderRadius.circular(15),
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            ListTile(
              title:Text("Flutter Tips" , style:TextStyle(fontSize:30 , color:Colors.grey.shade900 )),
              subtitle:Text("Build Flutter Apps Quickly" , style:TextStyle(fontSize:20 , color:Colors.grey.shade900 )),
              trailing:IconButton(icon:Icon(Icons.delete , size:40,fontWeight:FontWeight.bold , color:Colors.grey.shade900),onPressed:(){}),
            ),

            Text("date : 1-1-2026" , style:TextStyle(fontSize:20 , color:Colors.grey.shade600 )),
          ]
        )
      ),
    );
  }
}
