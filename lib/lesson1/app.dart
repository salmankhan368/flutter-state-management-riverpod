import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final staticStringProvider = Provider((Ref ref) {
  return "Hello RiverPod";
});
final intProvider = Provider((Ref ref) {
  return 309;
});
final doubleProvider = Provider((Ref ref) {
  return 309.99;
});

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = ref.watch(staticStringProvider);
    final resutInt = ref.watch(doubleProvider);
    final resultDouble = ref.watch(intProvider);
    return Scaffold(
      body: Center(
        child: Text("$result $resutInt.toString() $resultDouble.toString()"),
      ),
    );
  }
}
