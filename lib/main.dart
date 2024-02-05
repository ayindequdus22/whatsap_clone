import 'package:flutter/material.dart';
import 'package:whatsap_clone/widgets/whatsapphome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
          primaryColor: Color(0xff075E54),
          appBarTheme: const AppBarTheme(
            titleTextStyle: TextStyle(color: Colors.white),
            backgroundColor: Color(0xff075E54),
            // Color(0xff25D366)
          ),
          useMaterial3: true,
          tabBarTheme: const TabBarTheme(
            labelColor: Colors.white,
            labelStyle: TextStyle(color: Colors.white),
            overlayColor:
                MaterialStatePropertyAll(Color.fromARGB(226, 105, 240, 175)),
          )),
      home: const WhatsAppClone(),
    );
  }
}
