import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';



import 'package:flutterapp11/model/todo_model.dart';
import 'package:flutterapp11/model/task_model.dart';
import 'package:flutterapp11/database/database.dart';

class TodoListModel extends Model {
  // modelleri listeleme işlevi
  var _db = DBProvider.db;
  List<Todo> get todos => _todos.toList();
  List<Task> get tasks => _tasks.toList();
  int getTaskCompletionPercent(Task task) => _taskCompletionPercentage[task.id];
  int getTotalTodosFrom(Task task) => todos.where((it) => it.parent == task.id).length;
  bool get isLoading => _isLoading;

  bool _isLoading = false;
  List<Task> _tasks = [];
  List<Todo> _todos = [];
  Map<String, int> _taskCompletionPercentage =  Map();

  static TodoListModel of(BuildContext context) =>
      ScopedModel.of<TodoListModel>(context);

   @override
  void addListener(listener) {
    super.addListener(listener);
    // dataları yenileme
    _isLoading = true;
    loadTodos();
    notifyListeners();
  }

  void loadTodos() async {
    var isNew = !await DBProvider.db.dbExists();
    if (isNew) {
      await _db.insertBulkTask(_db.tasks);
      await _db.insertBulkTodo(_db.todos);
    }
    _tasks = await _db.getAllTask();
    _todos = await _db.getAllTodo();
    _tasks.forEach((it) => _calcTaskCompletionPercent(it.id));
    _isLoading = false;
    await Future.delayed(Duration(milliseconds: 300));
    notifyListeners();
  }

  @override
  void removeListener(listener) {
    super.removeListener(listener);
    print("remove listner called");
   
  }

  void addTask(Task task) {
    _tasks.add(task);
    _calcTaskCompletionPercent(task.id);
    _db.insertTask(task);
    notifyListeners();
  }

  void removeTask(Task task) {
    _db.removeTask(task).then((_) {
      _tasks.removeWhere((it) => it.id == task.id);
      _todos.removeWhere((it) => it.parent == task.id);
      notifyListeners();
    });
  }

  void updateTask(Task task) {
    var oldTask = _tasks.firstWhere((it) => it.id == task.id);
    var replaceIndex = _tasks.indexOf(oldTask);
    _tasks.replaceRange(replaceIndex, replaceIndex + 1, [task]);
    _db.updateTask(task);
    notifyListeners();
  }

  void removeTodo(Todo todo) {
    _todos.removeWhere((it) => it.id == todo.id);
    _syncJob(todo);
    _db.removeTodo(todo);
    notifyListeners();
  }

  void addTodo(Todo todo) {
    _todos.add(todo);
    _syncJob(todo);
    _db.insertTodo(todo);
    notifyListeners();
  }

  void updateTodo(Todo todo) {
    var oldTodo = _todos.firstWhere((it) => it.id == todo.id);
    var replaceIndex = _todos.indexOf(oldTodo);
    _todos.replaceRange(replaceIndex, replaceIndex + 1, [todo]);

    _syncJob(todo);
    _db.updateTodo(todo);

    notifyListeners();
  }

  _syncJob(Todo todo) {
    _calcTaskCompletionPercent(todo.parent);
    
  }

  void _calcTaskCompletionPercent(String taskId) {
    var todos = this.todos.where((it) => it.parent == taskId);
    var totalTodos = todos.length;

    if (totalTodos == 0) {
      _taskCompletionPercentage[taskId] = 0;
    } else {
      var totalCompletedTodos = todos.where((it) => it.isCompleted == 1).length;
      _taskCompletionPercentage[taskId] = (totalCompletedTodos / totalTodos * 100).toInt();
    } 
  }

}
