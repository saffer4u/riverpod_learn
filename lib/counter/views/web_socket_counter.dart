import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/providers.dart';





class WebSocketCounter extends ConsumerWidget {
  const WebSocketCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<int> counter = ref.watch(counterProviderSocket(6));

    return Scaffold(
      appBar: AppBar(
        title: const Text("Web Socket Counter"),
      ),
      body: Center(
        child: Text(
          counter
              .when(
                data: (int value) => value,
                error: (Object e, _) => e,
                loading: () => 0,
              )
              .toString(),
          style: const TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
