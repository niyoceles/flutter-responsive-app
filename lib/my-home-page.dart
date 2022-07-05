import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // bool isDesktop(BuildContext context) =>
  //     MediaQuery.of(context).size.width >= 600;

  // bool isMobile(BuildContext context) =>
  //     MediaQuery.of(context).size.width < 600;
  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width >= 600;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Responsive App'),
        ),
        body: Center(
          child: Row(children: [
            // if(isDesktop(context)) //
            if (isDesktop)
              Container(
                color: Colors.blueAccent,
                width: 200,
                child: const Center(child: Text('SIDEBAR')),
              ),
            Expanded(
                child: Container(
                    // color: Colors.grey,
                    child: const Center(child: Text('MAIN BODY'))))
          ]),
        ));
  }
}
