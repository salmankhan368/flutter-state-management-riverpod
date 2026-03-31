import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
/*---
in lesson one i call in home app.dart
 import 'package:river_pord_lesson/lesson1/app.dart';*/
import 'package:river_pord_lesson/lesson2/state_provider.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: true,
        home: StateProviderLesson(),
      ),
    ),
  );
}
