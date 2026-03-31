import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

final counterProvider = StateProvider((Ref ref) {
  return 0;
});

class StateProviderLesson extends ConsumerWidget {
  const StateProviderLesson({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(
          child: Text(
            "SateProvider Lesson",
            style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.normal,
              fontSize: 22,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        onPressed: () {
          ref.watch(counterProvider.notifier).state++;
          print("object");
        },
        child: Icon(Icons.add, color: Colors.white),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) {
              final counter = ref.watch(counterProvider);
              return Center(child: Text(counter.toString()));
            },
          ),
        ],
      ),
    );
  }
}
