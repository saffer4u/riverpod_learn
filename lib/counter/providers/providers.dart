import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/fake_web_socket.dart';

final websocketClientProvider = Provider<WebsocketClient>(
  (ref) {
    return FakeWebsocketClient();
  },
);

final counterProviderSocket = StreamProvider.family<int, int>((ref, start) {
  final wsClint = ref.watch(websocketClientProvider);
  return wsClint.getCounterStream(start);
});

final counterProvider = StateProvider<int>((ref) => 0);

