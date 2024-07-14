import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_manager_app/services/shared_preferences/shared_preferences.dart';

class MochSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  MochSharedPreferences? mockSharedPreferences;
  SharedPreferencesService? service;

  setUp(() async {
    mockSharedPreferences = MochSharedPreferences();
    SharedPreferences.setMockInitialValues({});
    SharedPreferencesService.setSharedPreferences(mockSharedPreferences!);
    service = await SharedPreferencesService.init();
  });

  group('Init the SharedPreferencesService', () {
    test('should return an instance of SharedPreferencesService', () {
      expect(
        service,
        isA<SharedPreferencesService>(),
      );
    });
  });

  group('PUT Method | SharedPreferencesService', () {
    test('Test PUT int value in SharedPreferences', () {
      when(mockSharedPreferences!.getInt('key')).thenReturn(1);
      expect(
        service!.put(key: 'key', value: 1),
        isA<Future<void>>(),
      );
    });

    test('Test PUT String value in SharedPreferences', () {
      when(mockSharedPreferences!.getString('key')).thenReturn('value');
      expect(
        service!.put(key: 'key', value: 'value'),
        isA<Future<void>>(),
      );
    });

    test('Test PUT Boolean value in SharedPreferences', () {
      when(mockSharedPreferences!.getBool('key')).thenReturn(true);
      expect(
        service!.put(key: 'key', value: true),
        isA<Future<void>>(),
      );
    });

    test('Test PUT Double value in SharedPreferences', () {
      when(mockSharedPreferences!.getDouble('key')).thenReturn(1.0);
      expect(
        service!.put(key: 'key', value: 1.0),
        isA<Future<void>>(),
      );
    });

    test('Test PUT List<String> value in SharedPreferences', () {
      when(mockSharedPreferences!.getStringList('key')).thenReturn(['value']);
      expect(
        service!.put(key: 'key', value: ['value']),
        isA<Future<void>>(),
      );
    });
  });
}
