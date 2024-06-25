import 'package:flutter/material.dart';

class SnackBarDemo extends StatelessWidget {
  const SnackBarDemo({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBarDemo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(title), //Titulo STL
          backgroundColor: Theme.of(context).primaryColor, //Cor de Fundo do Titulo
          foregroundColor: Theme.of(context).primaryColorDark, //Cor do Texto do Titulo
          leading: BackButton(
            onPressed: () {
              //Navigator.of(context).pop();
              Navigator.pop(context, true);
            },
            color: Theme.of(context).primaryColorDark, //Cor do Botão Voltar
          ),
        ),
        body: const SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: const Text('A SnackBar Demostração!'),
            action: SnackBarAction(
              label: 'Desfazer',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Show SnackBar'),
      ),
    );
  }
}