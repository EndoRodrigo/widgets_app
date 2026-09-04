import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class SnackbarScream extends StatelessWidget {
  static const String name = 'snackbar';
  const SnackbarScream({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SnackBar y Dialogos')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    Text(
                      'Ex aliquip veniam sit dolore quis consectetur tempor ad veniam. Ex aliquip veniam sit dolore quis consectetur tempor ad veniam.',
                    ),
                  ],
                );
              },
              child: Text('Licencias usadas'),
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: Text('Mostrar dialogo'),
            ),
          ],
        ),
      ),

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

void openDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => AlertDialog(
      title: Text('Estas seguro'),
      content: Text(
        'Eiusmod pariatur veniam dolor deserunt magna veniam culpa laborum esse adipisicing voluptate. Ex ad ut esse Lorem ea aliquip et. Fugiat occaecat eu exercitation officia esse minim sunt minim enim. Sint duis velit eu do nisi.',
      ),
      actions: [
        TextButton(onPressed: () => context.pop(), child: Text('Cancelar')),
        FilledButton(onPressed: () => context.pop(), child: Text('Aceptar')),
      ],
    ),
  );
}
