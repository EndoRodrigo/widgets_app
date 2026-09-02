import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SnackbarScream extends StatelessWidget {
  static const String name = 'snackbar';
  const SnackbarScream({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SnackBar y Dialogos')),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _ShowSnackbar(context),
        label: Text('Mostrar snackbar y dialog'),
        icon: Icon(Icons.remove_circle_outline_outlined),
      ),
    );
  }
}

void _ShowSnackbar(BuildContext context) {
  ScaffoldMessenger.of(context).clearSnackBars();
  final snackBar = SnackBar(
    content: Text('Hola mundo'),
    action: SnackBarAction(label: 'ok', onPressed: () {}),
    duration: Duration(seconds: 2),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
