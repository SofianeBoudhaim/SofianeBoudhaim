import 'package:flutter/material.dart';
import 'package:simulator_creator/zone.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simulateur Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Créateur de simulateur d\'aiguillage'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String zones = "";
  int numZone = 451;

  void ajouterZone() {
    setState(() {
      Zone zone1 = Zone(numZone.toString());
      numZone += 2;
      zones += zone1.afficherZone();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Construction des zones :',
              style: TextStyle(color: Colors.green),
            ),
            Text(
              zones,
              style: const TextStyle(color: Colors.green),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ajouterZone,
        tooltip: 'Ajouter une zone',
        child: const Icon(Icons.add),
      ),
    );
  }
}
