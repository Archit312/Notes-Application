import 'package:flutter/material.dart';
import 'package:notes_application/src/modules/base/screens/create_note.dart';
import 'package:notes_application/src/modules/widgets/custom_appbar.dart';
import 'package:notes_application/src/modules/widgets/custom_floating_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Notes App", isCenter: true, actions: false),
      floatingActionButton: CustomFloatingActionButton(floatingIcon: Icons.add,nextScreen:CreateNotes(),),
    );
  }
}
