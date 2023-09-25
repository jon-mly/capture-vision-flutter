import 'dart:ffi';

import 'package:flutter/material.dart';

import '../dbr/general_enums.dart';
import '../common/basic_structures.dart';
import '../misc/dcv_channel_common.dart';

class CameraEnhancerCaller {
  static final CameraEnhancerCaller _instance = CameraEnhancerCaller();

  static CameraEnhancerCaller get instance => _instance;

  Future createInstance() {
    return methodChannel.invokeMethod('cameraEnhancer_createInstance');
  }

  Future<void> dispose() {
    return methodChannel.invokeMethod('cameraEnhancer_dispose');
  }

  Future<void> setScanRegion(Region? region) {
    return methodChannel.invokeMethod(
        'cameraEnhancer_setScanRegion', {'scanRegion': region?.toJson()});
  }

  Future<void> setScanRegionVisible({required bool isVisible}) {
    return methodChannel.invokeMethod(
        'cameraEnhancer_setScanRegionVisible', {'isVisible': isVisible});
  }

  Future<void> setOverlayVisible(bool isVisible) {
    return methodChannel.invokeMethod(
        'cameraEnhancer_setOverlayVisible', {'isVisible': isVisible});
  }

  Future<void> openCamera() {
    return methodChannel.invokeMethod("cameraEnhancer_openCamera");
  }

  Future<void> closeCamera() {
    return methodChannel.invokeMethod("cameraEnhancer_closeCamera");
  }

  Future selectCamera(EnumCameraPosition position) {
    return methodChannel.invokeMethod("cameraEnhancer_selectCamera",
        position == EnumCameraPosition.CP_BACK ? 0 : 1);
  }

  Future turnOnTorch() {
    return methodChannel.invokeMethod("cameraEnhancer_turnOnTorch");
  }

  Future turnOffTorch() {
    return methodChannel.invokeMethod("cameraEnhancer_turnOffTorch");
  }

  Future setTorchButton(TorchButton button) {
    return methodChannel.invokeMethod(
        "cameraView_torchButton", button.toJson());
  }

  Future enableEnhancedFeatures(int feature) {
    return methodChannel.invokeMethod(
        "cameraEnhancer_enable_enhanced_features", feature);
  }

  Future disableEnhancedFeatures(int feature) {
    return methodChannel.invokeMethod(
        "cameraEnhancer_disable_enhanced_features", feature);
  }

  Future setZoomFactor(double zoomFactor) {
    return methodChannel.invokeMethod(
        "cameraEnhancer_set_zoom_factor", zoomFactor);
  }

  Future setAutoZoomRange(RangeValues zoomRange) {
    final rangeValues = {'start': zoomRange.start, 'end': zoomRange.end};
    return methodChannel.invokeMethod(
        "cameraEnhancer_set_zoom_range", rangeValues);
  }

  Future<RangeValues?> getAutoZoomRange() async {
    final zoomRange = await methodChannel
        .invokeMethod("cameraEnhancer_get_zoom_range");
    if (zoomRange != null) {
      final rangeValues =
          RangeValues(zoomRange['start'] ?? 0, zoomRange['end'] ?? 0);
      return rangeValues;
    }
    return null;
  }

  Future<double?> getMaxZoomFactor() {
    return methodChannel.invokeMethod<double>("cameraEnhancer_get_max_zoom_factor");
  }
}
