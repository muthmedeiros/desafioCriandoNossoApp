import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomizedTextInput extends StatefulWidget {
  final Function(String)? onChanged;
  final String description;
  final TextEditingController textController;

  const CustomizedTextInput({
    Key? key,
    required this.textController,
    required this.onChanged,
    required this.description,
  }) : super(key: key);
  @override
  _CustomizedTextInputState createState() => _CustomizedTextInputState();
}

class _CustomizedTextInputState extends State<CustomizedTextInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: widget.textController,
            maxLines: null,
            onChanged: widget.onChanged,
            decoration: InputDecoration(
              labelText: 'Descrição da nota',
            ),
          ),
          SizedBox(
            height: 32,
          ),
          if (widget.description.isNotEmpty)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context, widget.description);
                    },
                    child: Text("Salvar"),
                  ),
                ),
              ],
            )
        ],
      ),
    );
  }
}
