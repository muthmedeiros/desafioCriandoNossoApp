import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateNewNoteButtonWidget extends StatefulWidget {
  final List<String> notes;

  const CreateNewNoteButtonWidget({Key? key, required this.notes})
      : super(key: key);

  @override
  _CreateNewButtonWidgetState createState() => _CreateNewButtonWidgetState();
}

class _CreateNewButtonWidgetState extends State<CreateNewNoteButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () async {
              final description =
                  await Navigator.pushNamed(context, '/create-note');
              if (description != null) {
                widget.notes.add(description as String);
                setState(() {});
              }
            },
            child: Text("Criar nova nota"),
          ),
        ),
      ],
    );
  }
}
