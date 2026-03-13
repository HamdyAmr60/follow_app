import 'package:flutter/material.dart';

AppBar customAppBar(){
  return AppBar(
  title :Padding(
    padding: const EdgeInsets.only(left:8.0),
    child: Text("Follow Notes" , style:TextStyle(fontWeight:FontWeight.bold , fontSize:25 , color:Colors.grey.shade500 )),
  ),
    actions: [Padding(
      padding: const EdgeInsets.only(right:8.0),
      child: Container(
          width: 50,
          height:50,
          decoration : BoxDecoration(
              color:Colors.grey.shade900,
              borderRadius: BorderRadius.circular(15)
          ),
          child: IconButton(icon:Icon(Icons.search , size:30,fontWeight:FontWeight.bold , color:Colors.grey.shade500) , onPressed:(){})),
    ),],
  );
}