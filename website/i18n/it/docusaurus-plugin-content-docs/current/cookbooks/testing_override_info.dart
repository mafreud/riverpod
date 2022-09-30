// ignore_for_file: avoid_unused_constructor_parameters

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

extension on ProviderBase {
  // ignore: unused_element
  Override overrideWithValue(Object? value) => throw UnimplementedError();
}

class Todo {
  Todo({
    required String id,
    required String label,
    required bool completed,
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

/* SNIPPET START */

final todoListProvider = FutureProvider((ref) async => <Todo>[]);
// ...
/* SKIP */
final foo =
/* SKIP END */
    ProviderScope(
  overrides: [
    /// Consente di sovrascrivere un FutureProvider per restituire un valore fisso
    todoListProvider.overrideWithValue(
      AsyncValue.data([Todo(id: '42', label: 'Hello', completed: true)]),
    ),
  ],
  child: const MyApp(),
);