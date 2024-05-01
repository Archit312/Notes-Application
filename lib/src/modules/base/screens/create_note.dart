import 'package:flutter/material.dart';
import 'package:notes_application/src/modules/base/controllers/base_controller.dart';
import 'package:notes_application/src/modules/base/screens/home_screen.dart';
import 'package:notes_application/src/modules/widgets/custom_appbar.dart';
import 'package:notes_application/src/modules/widgets/custom_floating_button.dart';
import 'package:notes_application/src/modules/widgets/custom_textfield.dart';

class CreateNotes extends StatelessWidget {
  CreateNotes({super.key});
  @override
  Widget build(BuildContext context) {
    final baseController bc = baseController();
    return Scaffold(
      appBar: customAppBar(title: "Create Note", isCenter: true, actions: false),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CustomTextField(textOnField: "Title", lengthChar: 200, textStyle: true, fieldController: bc.title),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: CustomTextField(textOnField: "Description",lengthChar: 3000,textStyle: false,fieldController: bc.description,),
            )
          ],
        ),
      ),
      floatingActionButton: CustomFloatingActionButton(floatingIcon: Icons.save_alt_outlined,nextScreen: HomeScreen(),),
    );
  }
}
