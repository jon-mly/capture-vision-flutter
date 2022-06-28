import '../utility/common.dart';
import '../utility/dbr/barcode_result.dart';
import '../utility/dbr/dbr_runtime_settings.dart';
import '../utility/general_enums.dart';

class BarcodeReaderCaller {
  static BarcodeReaderCaller _instance = BarcodeReaderCaller();

  static BarcodeReaderCaller get instance => _instance;

  Future<bool> initLicense({required String license}) async {
    return await methodChannel.invokeMethod('barcodeReader_initLicense', {'license': license});
  }

  Future<void> createInstance() {
    return methodChannel.invokeMethod('barcodeReader_createInstance');
  }

  Future<String?> getVersion() {
    return methodChannel.invokeMethod<String>('barcodeReader_getVersion');
  }

  Future<void> startScanning() {
    return methodChannel.invokeMethod('barcodeReader_startScanning');
  }

  Future<void> stopScanning() {
    return methodChannel.invokeMethod('barcodeReader_stopScanning');
  }

  Future<void> updateRuntimeSettings({required DBRRuntimeSettings settings}) {
    return methodChannel.invokeMethod('barcodeReader_updateRuntimeSettings',{'runtimeSettings': settings.toJson()});
  }

  Future<DBRRuntimeSettings> getRuntimeSettings() async {
    final jsonMap = await methodChannel.invokeMethod('barcodeReader_getRuntimeSettings');
    return DBRRuntimeSettings.fromJson(jsonMap);
  }

  Future<void> updateRuntimeSettingsFromTemplate({required EnumDBRPresetTemplate template}) {
    return methodChannel.invokeMethod('barcodeReader_updateRuntimeSettingsFromTemplate',{'presetTemplate': template.jsonValue});
  }

  Future<void> updateRuntimeSettingsFromJson({required String jsonString}) {
    return methodChannel.invokeMethod('barcodeReader_updateRuntimeSettingsFromJson', {'jsonString': jsonString});
  }

  Future<void> resetRuntimeSettings() {
    return methodChannel.invokeMethod('barcodeReader_resetRuntimeSettings');
  }

  Future<String?> outputRuntimeSettingsToString() {
    return methodChannel.invokeMethod<String>('barcodeReader_outputRuntimeSettingsToString');
  }

  Stream<List<BarcodeResult>> addResultlistener() {
    return barcodeResultEventChannel.receiveBroadcastStream({'streamName': 'barcodeReader_addResultlistener'}).map((event) {
      return BarcodeUtilityTool.convertToTextResults(List<Map<dynamic, dynamic>>.from(event));
    });
  }
}
