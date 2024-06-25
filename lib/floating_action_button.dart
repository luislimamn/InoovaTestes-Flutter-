import 'package:flutter/material.dart';

class FloatingActionButtonExample extends StatelessWidget {
  const FloatingActionButtonExample({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FloatingActionButton',
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Small'),
                  const SizedBox(width: 16),
                  // An example of the small floating action button.
                  // https://m3.material.io/components/floating-action-button/specs#669a1be8-7271-48cb-a74d-dd502d73bda4
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: FloatingActionButton.small(
                      onPressed: () {
                        // Add your onPressed code here!
                      },
                      backgroundColor: Theme.of(context).primaryColor,
                      child: Icon(
                          Icons.add,
                          color: Theme.of(context).primaryColorDark
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: FloatingActionButton.small(
                      onPressed: () {
                        // Add your onPressed code here!
                      },
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)), //Quadrado
                      backgroundColor: Theme.of(context).primaryColor,
                      child: Icon(
                          Icons.add,
                          color: Theme.of(context).primaryColorDark
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: FloatingActionButton.small(
                      onPressed: () {
                        // Add your onPressed code here!
                      },
                      shape: const CircleBorder(), //Redondo
                      backgroundColor: Theme.of(context).primaryColor,
                      child: Icon(
                          Icons.add,
                          color: Theme.of(context).primaryColorDark
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Regular'),
                  const SizedBox(width: 16),
                  // An example of the regular floating action button.
                  // https://m3.material.io/components/floating-action-button/specs#71504201-7bd1-423d-8bb7-07e0291743e5
                  FloatingActionButton(
                    onPressed: () {
                      // Add your onPressed code here!
                    },
                    shape: const CircleBorder(), //Redondo
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Icon(
                        Icons.add,
                        color: Theme.of(context).primaryColorDark
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Large'),
                  const SizedBox(width: 16),
                  // An example of the large floating action button.
                  // https://m3.material.io/components/floating-action-button/specs#9d7d3d6a-bab7-47cb-be32-5596fbd660fe
                  FloatingActionButton.large(
                    onPressed: () {
                      // Add your onPressed code here!
                    },
                    shape: const CircleBorder(), //Redondo
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Icon(
                        Icons.add,
                        color: Theme.of(context).primaryColorDark
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Extended'),
                  const SizedBox(width: 16),
                  // An example of the extended floating action button.
                  // https://m3.material.io/components/extended-fab/specs#686cb8af-87c9-48e8-a3e1-db9da6f6c69b
                  FloatingActionButton.extended(
                    onPressed: () {
                      // Add your onPressed code here!
                    },
                    backgroundColor: Theme.of(context).primaryColor,
                    label: const Text('Add'),
                    icon: Icon(
                        Icons.add,
                        color: Theme.of(context).primaryColorDark
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}