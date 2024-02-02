import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _Options = (await secureStorage.getStringList('ff_Options'))
              ?.map((x) {
                try {
                  return InventoryDropdownStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _Options;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  List<InventoryDropdownStruct> _Options = [
    InventoryDropdownStruct.fromSerializableMap(jsonDecode(
        '{"Options":"[\\"Items\\",\\"ItemGroup\\",\\"InventoryAdjustment\\",\\"Category\\"]"}'))
  ];
  List<InventoryDropdownStruct> get Options => _Options;
  set Options(List<InventoryDropdownStruct> value) {
    _Options = value;
    secureStorage.setStringList(
        'ff_Options', value.map((x) => x.serialize()).toList());
  }

  void deleteOptions() {
    secureStorage.delete(key: 'ff_Options');
  }

  void addToOptions(InventoryDropdownStruct value) {
    _Options.add(value);
    secureStorage.setStringList(
        'ff_Options', _Options.map((x) => x.serialize()).toList());
  }

  void removeFromOptions(InventoryDropdownStruct value) {
    _Options.remove(value);
    secureStorage.setStringList(
        'ff_Options', _Options.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromOptions(int index) {
    _Options.removeAt(index);
    secureStorage.setStringList(
        'ff_Options', _Options.map((x) => x.serialize()).toList());
  }

  void updateOptionsAtIndex(
    int index,
    InventoryDropdownStruct Function(InventoryDropdownStruct) updateFn,
  ) {
    _Options[index] = updateFn(_Options[index]);
    secureStorage.setStringList(
        'ff_Options', _Options.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInOptions(int index, InventoryDropdownStruct value) {
    _Options.insert(index, value);
    secureStorage.setStringList(
        'ff_Options', _Options.map((x) => x.serialize()).toList());
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}
