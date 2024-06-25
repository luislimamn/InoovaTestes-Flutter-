import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final isSelected = <bool>[false, false, false];
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyHomePage',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(widget.title), //Titulo STF
          //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          backgroundColor:
              Theme.of(context).primaryColor, //Cor de Fundo do Titulo
          foregroundColor:
              Theme.of(context).primaryColorDark, //Cor do Texto do Titulo
        ),
        body: Container(
          decoration: BoxDecoration(color: Theme.of(context).primaryColorLight),
          padding: const EdgeInsets.all(16),
          child: Center(
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Elevated Button:',
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/opacity');
                            },
                            child: const Text('Opacity')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/animated');
                            },
                            child: const Text('Animated')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/floating');
                            },
                            child: const Text('Floating')),
                      )
                    ],
                  ),
                ),
                const Text(
                  'Elevated Button:',
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/gridview');
                            },
                            child: const Text('Grid View')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/snackbar');
                            },
                            child: const Text('Snack Bar')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/shopping');
                            },
                            child: const Text('Shopping')),
                      )
                    ],
                  ),
                ),
                const Text(
                  'Elevated Button:',
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/gridview');
                            },
                            child: const Text('Grid View')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/snackbar');
                            },
                            child: const Text('Snack Bar')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/shopping');
                            },
                            child: const Text('Shopping')),
                      )
                    ],
                  ),
                ),
                const Text(
                  'Elevated Button:',
                ),
                const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(4.0),
                        child: ElevatedButton(
                            onPressed: null,
                            child: Text('Elevated')
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(4.0),
                        child: ElevatedButton(
                            onPressed: null,
                            child: Text('Elevated')
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(4.0),
                        child: ElevatedButton(
                            onPressed: null,
                            child: Text('Elevated')
                        ),
                      )
                    ],
                  ),
                ),
                const Text(
                  'Type of Buttons:',
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        //FlatButton
                        child: TextButton(onPressed: () {}, child: const Text('Text')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        //OutlineButton
                        child: OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        //RaisedButton
                        child: ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
                      )
                    ],
                  ),
                ),
                const Text(
                  'Toggle Button:',
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ToggleButtons(
                        color: Colors.black.withOpacity(0.60),
                        selectedColor: const Color(0xFF6200EE),
                        selectedBorderColor: const Color(0xFF6200EE),
                        fillColor: const Color(0xFF6200EE).withOpacity(0.08),
                        splashColor: const Color(0xFF6200EE).withOpacity(0.12),
                        hoverColor: const Color(0xFF6200EE).withOpacity(0.04),
                        borderRadius: BorderRadius.circular(4.0),
                        constraints: const BoxConstraints(minHeight: 36.0),
                        isSelected: isSelected,
                        onPressed: (index) {
                          // Respond to button selection
                          setState(() {
                            isSelected[index] = !isSelected[index];
                          });
                        },
                        children: const [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text('BUTTON 1'),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text('BUTTON 2'),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text('BUTTON 3'),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Você apertou o botão tantas vezes:',
                  ),
                ),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked, //Centro da Navegation
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, //Centro Inferior
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          mini: false,
          //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)), //Quadrado
          shape: const CircleBorder(), //Redondo
          backgroundColor: Theme.of(context).primaryColor,
          child: const Icon(Icons.add, color: Colors.black, size: 28),
        ),
        bottomNavigationBar: BottomAppBar(
            color: Theme.of(context).primaryColor,
            shape: const CircularNotchedRectangle(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/floating');
                    },
                    icon:
                        const Icon(Icons.home, color: Colors.lightBlueAccent)),
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/shopping');
                    },
                    icon: const Icon(Icons.favorite, color: Colors.red))
              ],
            )),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
