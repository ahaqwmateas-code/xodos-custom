import 'package:flutter/material.dart';
import 'models/workstation_profile.dart';

void main() => runApp(const XoDosApp());

class XoDosApp extends StatelessWidget {
  const XoDosApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XoDos Custom',
      theme: ThemeData.light().copyWith(
        primaryColor: const Color(0xFF03A9F4),
        colorScheme: const ColorScheme.light(primary: Color(0xFF03A9F4)),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('XoDos Custom')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('XoDos Ready', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            Text('Cloud Providers: ${connectedClouds.length}'),
            const SizedBox(height: 10),
            Text('Providers: ${connectedClouds.map((p) => p.providerId).join(", ")}'),
            const SizedBox(height: 30),
            const Text('Light Blue Theme Active', style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
