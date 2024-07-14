import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  factory SharedPreferencesService() {
    return _prefsService;
  }

  SharedPreferencesService._internal();

  late SharedPreferences _prefs;

  static final SharedPreferencesService _prefsService =
      SharedPreferencesService._internal();

  static Future<SharedPreferencesService> init() async {
    _prefsService._prefs = await SharedPreferences.getInstance();
    return SharedPreferencesService();
  }

  /// This method is used to set the shared preferences for testing purposes
  /// only.
  static void setSharedPreferences(SharedPreferences mockPrefs) {
    _prefsService._prefs = mockPrefs;
  }

  Future<void> put<T>({required String key, required T value}) async {
    switch (value.runtimeType) {
      case int:
        await _prefs.setInt(key, value as int);

      case String:
        await _prefs.setString(key, value as String);

      case bool:
        await _prefs.setBool(key, value as bool);

      case double:
        await _prefs.setDouble(key, value as double);

      case const (List<String>):
        await _prefs.setStringList(key, value as List<String>);
    }
  }

  T? read<T>(String key, T? defaultValue) {
    assert(key.isNotEmpty, 'The key for the value is required');
    try {
      switch (T) {
        case int:
          return _prefs.getInt(key) as T?;

        case String:
          return _prefs.getString(key) as T?;

        case bool:
          return _prefs.getBool(key) as T?;

        case double:
          return _prefs.getDouble(key) as T?;

        case const (List<String>):
          _prefs.getStringList(key) as T?;

        default:
          return defaultValue;
      }

      return null;
    } catch (e) {
      return null;
    }
  }

  Future<void> remove({required String key}) async {
    await _prefs.remove(key);
  }
}
