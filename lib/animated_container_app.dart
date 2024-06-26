import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedContainerApp extends StatefulWidget {
  const AnimatedContainerApp({super.key, required this.title});

  final String title;
  @override
  State<AnimatedContainerApp> createState() => _AnimatedContainerAppState();
}

class _AnimatedContainerAppState extends State<AnimatedContainerApp> {
  // Define the various properties with default values. Update these properties
  // when the user taps a FloatingActionButton.
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AnimatedContainerApp',
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
          child: AnimatedContainer(
            // Use the properties stored in the State class.
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: _borderRadius,
            ),
            // Define how long the animation should take.
            duration: const Duration(seconds: 1),
            // Provide an optional curve to make the animation feel smoother.
            curve: Curves.fastOutSlowIn,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          // When the user taps the button
          onPressed: () {
            // Use setState to rebuild the widget with new values.
            setState(() {
              // Create a random number generator.
              final random = Random();

              // Generate a random width and height.
              _width = random.nextInt(300).toDouble();
              _height = random.nextInt(300).toDouble();

              // Generate a random color.
              _color = Color.fromRGBO(
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256),
                1,
              );

              // Generate a random border radius.
              _borderRadius =
                  BorderRadius.circular(random.nextInt(100).toDouble());
            });
          },
          child: const Icon(Icons.play_arrow),
        ),
      ),
    );
  }
}