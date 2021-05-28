import 'package:flutter/material.dart';

class CustomizedCardWidget extends StatefulWidget {
  final List<String> notes;

  const CustomizedCardWidget({Key? key, required this.notes}) : super(key: key);

  @override
  _CustomizedCardWidgetState createState() => _CustomizedCardWidgetState();
}

class _CustomizedCardWidgetState extends State<CustomizedCardWidget> {
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var i = 0; i < widget.notes.length; i++)
          Card(
            child: ListTile(
              title: Text(widget.notes[i]),
              onTap: () async {
                final response = await Navigator.pushNamed(
                    context, '/create-note',
                    arguments: widget.notes[i]);
                if (response != null) {
                  var description = response as String;
                  if (response.isEmpty) {
                    widget.notes.removeAt(i);
                  } else {
                    widget.notes[i] = (description);
                  }
                  setState(() {});
                }
              },
            ),
          ),
      ],
    );
  }
}
