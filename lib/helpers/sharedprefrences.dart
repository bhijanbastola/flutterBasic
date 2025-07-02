import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo/models/todoModel.dart';

class SharedPrefrencesHelper {
  static late SharedPreferences _prefrences;
  static const String stringListKey = "key";

  static Future<void> init() async {
    _prefrences = await SharedPreferences.getInstance();
  }

  static Future<void> setStringList(String key, List<String> todoList) async {
    await _prefrences.setStringList(stringListKey, todoList);
  }

  static List<String> getStringList(String key) {
    return _prefrences.getStringList(stringListKey)??[];
  }

  static Future<void> saveTodo(String key, List<TodoModel> todos) async {
    List<String> jsonList = todos.map((todo) => todo.convertToJson()).toList();
    await _prefrences.setStringList(key, jsonList);
  }

  static List<TodoModel> loadTodo(String key) {
    List<String> jsonList = _prefrences.getStringList(key) ?? [];
    return jsonList.map((json) => TodoModel.fromJson(json)).toList();
  }
}
