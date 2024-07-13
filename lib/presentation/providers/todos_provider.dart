import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/config/config.dart';
import 'package:river_app/domain/domain.dart';
import 'package:uuid/uuid.dart';

const _uuid = Uuid();

final todosProvider = StateNotifierProvider<TodosNotifier, List<Todo>>((ref) {
  return TodosNotifier();
});

class TodosNotifier extends StateNotifier <List<Todo>>{
  TodosNotifier(): super([
    Todo(id: _uuid.v4(), descrition: RandomGenerator.getRandomName(), completedAt: null),
    Todo(id: _uuid.v4(), descrition: RandomGenerator.getRandomName(), completedAt: null),
    Todo(id: _uuid.v4(), descrition: RandomGenerator.getRandomName(), completedAt: DateTime.now()),
    Todo(id: _uuid.v4(), descrition: RandomGenerator.getRandomName(), completedAt: null),
  ]);
}