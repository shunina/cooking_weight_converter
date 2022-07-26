import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cooking Weight Converter',
      theme: ThemeData(
          primarySwatch: Colors.indigo, scaffoldBackgroundColor: Colors.white),
      darkTheme: ThemeData(
          primarySwatch: Colors.indigo, scaffoldBackgroundColor: Colors.white),
      home: const ConvertPage(title: 'Cooking Weight Converter'),
    );
  }
}

class ConvertPage extends StatefulWidget {
  const ConvertPage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<ConvertPage> createState() => _ConvertPageState();
}

class _ConvertPageState extends State<ConvertPage> {
  void _convertWeights() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the ConvertPage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: const SizedBox(
        width: double.infinity,
        child: TextField(
          keyboardType: TextInputType.multiline,
          maxLines: null,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _convertWeights,
        tooltip: 'convert Weight',
        child: const Icon(Icons.change_circle),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
