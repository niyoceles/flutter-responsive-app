import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(builder: (context, orientation) {
        var isPortrait = orientation == Orientation.portrait;
        return isPortrait
            ? Container(
                color: Colors.blue,
                child: const Center(
                  child: Text('Portrait'),
                ),
              )
            : Container(
                color: Colors.greenAccent,
                child: const Center(
                  child: Text('Landscape'),
                ),
              );
      }),
    );
  }
}
