import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButton: FloatingActionButton(    
        shape: const StadiumBorder(side: BorderSide(color: Colors.white, width: 4)),
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        backgroundColor: Colors.orange,
        child: const Icon(Icons.add),
        
      ), 
      bottomNavigationBar: BottomAppBar( 
        shape: CircularNotchedRectangle(),
        notchMargin: 5, //notche margin between floating button and bottom appbar
      child: Row( //children inside bottom appbar
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left:90),
            child:IconButton(icon: const Icon(Icons.home, color: Colors.deepPurple, size: 40.0,), onPressed: () {},),
          ),
          IconButton(icon: const Icon(Icons.note_alt_sharp, color: Colors.deepPurple, size: 40.0,), onPressed: () {},),
          IconButton(icon: const Icon(Icons.people_rounded, color: Colors.deepPurple, size: 40.0,), onPressed: () {},),
        ],
        ),
      )
    );
  }
}
