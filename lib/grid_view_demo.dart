import 'package:flutter/material.dart';

class GridViewDemo extends StatefulWidget {
  const GridViewDemo({super.key, required this.title});

  final String title;
  @override
  State<GridViewDemo> createState() => _GridViewDemoState();
}

class _GridViewDemoState extends State<GridViewDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FloatingActionButton',
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
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[50],
                child: const Text(
                  'Cor: Tea(50)',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[100],
                child: const Text(
                  'Cor: Tea(100)',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black87
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[200],
                child: const Text(
                  'Cor: Tea(200)',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black54
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[300],
                child: const Text(
                  'Cor: Tea(300)',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black45
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[400],
                child: const Text(
                  'Cor: Tea(400)',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black45
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[500],
                child: const Text(
                  'Cor: Tea(500)',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white60
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[600],
                child: const Text(
                  'Cor: Tea(600)',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white60
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[700],
                child: const Text(
                  'Cor: Tea(700)',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white70
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[800],
                child: const Text(
                  'Cor: Tea(800)',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white70
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[900],
                child: const Text(
                  'Cor: Tea(900)',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

