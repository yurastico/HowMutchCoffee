import 'package:flutter/material.dart';

void main() => runApp(const MyAppStateful());

class MyAppStateful extends StatefulWidget {
  const MyAppStateful({super.key});

  @override
  State<MyAppStateful> createState() => _MyAppStatefulState();
}

class _MyAppStatefulState extends State<MyAppStateful> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Home Page'),
        ),
        body: Center(
          child: Builder(
            builder: (context) {
              return Column(
                children: [
                  Text('Hello World ${DateTime.now().millisecond}'),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {

                      });
                    },
                    child: const Text('A button'),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

}