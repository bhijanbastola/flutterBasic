import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo/cv/cv.dart';
// import 'package:todo/models/todoModel.dart';

class SharedPrefrencesHelper {
  static late SharedPreferences _prefrences;
  static const String stringListKey = "key";

  static Future<void> init() async {
    _prefrences = await SharedPreferences.getInstance();
  }

  static Future<void> setStringList(String key, List<String> cvList) async {
    await _prefrences.setStringList(stringListKey, cvList);
  }

  static List<String> getStringList(String key) {
    return _prefrences.getStringList(stringListKey)??[];
  }

  static Future<void> saveCv(String key, List<Cv> todos) async {
    List<String> jsonList = todos.map((todo) => todo.toJson()).toList();
    await _prefrences.setStringList(key, jsonList);
  }

  static List<Cv> loadCv(String key) {
    List<String> jsonList = _prefrences.getStringList(key) ?? [];
    return jsonList.map((json) => Cv.fromJson(json)).toList();
  }
}
