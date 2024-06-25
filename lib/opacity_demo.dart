import 'package:flutter/material.dart';

class OpacityDemo extends StatefulWidget {
  const OpacityDemo({super.key, required this.title});

  final String title;
  @override
  State<OpacityDemo> createState() => _OpacityDemoState();
}

class _OpacityDemoState extends State<OpacityDemo> {
  // Whether the green box should be visible
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OpacityDemo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(widget.title), //Titulo STF
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
        body: Center(
          child: AnimatedOpacity(
            // If the widget is visible, animate to 0.0 (invisible).
            // If the widget is hidden, animate to 1.0 (fully visible).
            opacity: _visible ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 500),
            // The green box must be a child of the AnimatedOpacity widget.
            child: Container(
              width: 200,
              height: 200,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Call setState. This tells Flutter to rebuild the
            // UI with the changes.
            setState(() {
              _visible = !_visible;
            });
          },
          tooltip: 'Toggle Opacity',
          child: const Icon(Icons.flip),
        ),
      ),
    );
  }
}
