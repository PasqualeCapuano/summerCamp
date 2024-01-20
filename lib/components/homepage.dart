import 'package:flutter/material.dart';
import 'package:portfolio/components/drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My portfolio'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: Container(
        color: Theme.of(context).colorScheme.primary,
        child: const SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ Text('Menu',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              DrawerList(
                
              )
            ],
          ),
        ),
      ),
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FilledButton(
              onPressed:() => {print('fioretto')}, 
              child: Text('Fioretto')),
            FilledButton(
              onPressed:() => {print('spada')}, 
              child: Text('Spada')),
            FilledButton(
              onPressed:() => {print('Sciabola')}, 
              child: Text('Sciabola')),
          ],
        ),
      )
    );
  }
}