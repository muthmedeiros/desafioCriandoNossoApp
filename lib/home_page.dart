import 'package:flutter/material.dart';
import 'package:notes/create_new_note_button_widget.dart';

import 'customized_card_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var notes = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NOTES'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width*0.98,
            child: Column(
              children: [
                CreateNewNoteButtonWidget(notes: notes),
                CustomizedCardWidget(notes: notes),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
