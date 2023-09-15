import 'package:flutter/material.dart';

class InputDialog extends StatelessWidget {
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Ingrese Palabra'),
      content: TextField(
        controller: textController,
        decoration: InputDecoration(labelText: 'Ingrese Palabra'),
      ),
      actions: <Widget>[
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(textController.text);
          },
          child: Text('Aceptar'),
        ),
      ],
    );
  }
}
