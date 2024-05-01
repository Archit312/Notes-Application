import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomFloatingActionButton extends StatelessWidget {
  IconData floatingIcon;
  Widget nextScreen;
  CustomFloatingActionButton({super.key,required this.floatingIcon,required this.nextScreen});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: (){
        Get.to(nextScreen);
      },
      backgroundColor: const Color.fromRGBO(19, 93, 102, 1) ,
      child: Icon(floatingIcon,color:Colors.white,)
    );
  }
}
