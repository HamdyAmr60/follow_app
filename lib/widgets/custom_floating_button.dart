
import 'package:flutter/material.dart';

FloatingActionButton customFloatingActionButton({required Function onPressed}){
  return FloatingActionButton(
    backgroundColor: Colors.grey.shade900,

    onPressed: onPressed(),
      child: Icon(Icons.add),
    );}
