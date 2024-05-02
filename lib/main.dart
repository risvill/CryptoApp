

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Currencies List',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 83, 83, 83),
        primarySwatch:  Colors.amber,
        useMaterial3: true,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.white
          ),
          bodySmall: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          )
        )
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crypto Currencies List'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, i) => const ListTile(
           title: Text('Bitcoin'//, style: theme.textTheme.bodyMedium
           ),
          subtitle: Text('20000', //style: Theme.of(context).textTheme.bodySmall,
          ),
        ))
    );
  }
}
