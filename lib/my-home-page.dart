import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var isMobile = MediaQuery.of(context).size.shortestSide < 600;
    var isDesktop = MediaQuery.of(context).size.shortestSide >= 600;
    // var isMobile = MediaQuery.of(context).size.width < 600;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive app'),
      ),
      drawer: isMobile
          ? Drawer(
              child: Center(child: Container(child: Text("Sidebar"))),
            )
          : null,
      body: Row(
        children: [
          if (isDesktop)
            Container(
              color: Colors.lightBlue,
              width: 300,
              child: Center(child: Text('Sidebar')),
            ),
          Expanded(
            child: OrientationBuilder(builder: (context, orientation) {
              var isPortrait = orientation == Orientation.portrait;
              return GridView.count(
                crossAxisCount: isPortrait ? 2 : 3,
                children: List.generate(40, (index) {
                  return Card(
                    color: Colors.orange,
                    child: Text('Item $index'),
                  );
                }),
              );
            }),
          ),
        ],
      ),
    );
  }
}
