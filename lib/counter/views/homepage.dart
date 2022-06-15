import 'package:flutter/material.dart';

import 'counter_page.dart';
import 'web_socket_counter.dart';



class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const Counter())),
              child: const Text("Go to Counter"),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const WebSocketCounter())),
              child: const Text("Go to Counter Socket"),
            ),
          ],
        ),
      ),
    );
  }
}
