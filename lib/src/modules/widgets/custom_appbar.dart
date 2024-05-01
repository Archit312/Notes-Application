import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

PreferredSize customAppBar({
  required String title,
  required bool isCenter,
  required bool? actions
}){
  return PreferredSize(
      preferredSize: Size(double.infinity,50),
      child: AppBar(
      title: Text(title,style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: isCenter,
        actions:actions==true?[
          Icon(Icons.import_contacts_sharp)
        ]:[],
        backgroundColor: Color.fromRGBO(19, 93, 102, 1),
        foregroundColor: Colors.white,
  ));
}