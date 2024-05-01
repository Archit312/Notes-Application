import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class baseController extends GetxController{
  final TextEditingController title = TextEditingController().obs as TextEditingController;
  final TextEditingController description = TextEditingController().obs as TextEditingController;
}