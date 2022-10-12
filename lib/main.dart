import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController num1controller = new TextEditingController();
  TextEditingController num2controller = new TextEditingController();
  String result = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: 100, right: 100, top: 30, bottom: 20),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: num1controller,
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'First Number',
                  hintText: 'Enter First Number',
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 100, right: 100, top: 10, bottom: 20),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: num2controller,
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Second Number',
                  hintText: 'Enter Second Number',
                ),
              ),
            ),
            Wrap(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 200, right: 50, top: 10, bottom: 20),
                  child: ElevatedButton(
                    child: Text("Addition"),
                    onPressed: () {
                      setState(() {
                        int sum = int.parse(num1controller.text) +
                            int.parse(num2controller.text);
                        result = sum.toString();
                      });
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 200, right: 250, top: 10, bottom: 20),
                  child: Text(
                    'Result : $result',
                    style: TextStyle(fontSize: 20, color: Colors.red),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
