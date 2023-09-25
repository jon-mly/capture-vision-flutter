package com.dynamsoft.dcv.flutter;

import android.app.Activity;

public class Common {

    /// Activity
    public static Activity pluginActivity;

    /// Photo Identifier
    public static final int REQUEST_CODE_CHOOSE_IMAGE_FROM_GALLERY = 1000;

    /// ExceptionTip
    public static final String exceptionTip = "Error";

    /// Channel Identifier
    public static final String methodChannel_Identifier = "com.dynamsoft/cature_vision";
    public static final String barcodeResult_EventChannel_Identifier = "com.dynamsoft/barcode_result_observer";
    public static final String platformFactory_identifier = "com.dynamsoft/platform_factory";

    /// DBR Methods
    public static final String barcodeReader_initLicense = "barcodeReader_initLicense";
    public static final String barcodeReader_createInstance = "barcodeReader_createInstance";
    public static final String barcodeReader_getVersion = "barcodeReader_getVersion";
    public static final String barcodeReader_startScanning = "barcodeReader_startScanning";
    public static final String barcodeReader_stopScanning = "barcodeReader_stopScanning";
    public static final String barcodeReader_updateRuntimeSettings = "barcodeReader_updateRuntimeSettings";
    public static final String barcodeReader_getRuntimeSettings = "barcodeReader_getRuntimeSettings";
    public static final String barcodeReader_updateRuntimeSettingsFromTemplate = "barcodeReader_updateRuntimeSettingsFromTemplate";
    public static final String barcodeReader_updateRuntimeSettingsFromJson = "barcodeReader_updateRuntimeSettingsFromJson";
    public static final String barcodeReader_resetRuntimeSettings = "barcodeReader_resetRuntimeSettings";
    public static final String barcodeReader_outputRuntimeSettingsToString = "barcodeReader_outputRuntimeSettingsToString";
    public static final String barcodeReader_addResultlistener = "barcodeReader_addResultlistener";
    public static final String barcodeReader_decodeFile = "barcodeReader_decodeFile";
    public static final String barcodeReader_enableResultVerification = "barcodeReader_enableResultVerification";
    public static final String barcodeReader_getModeArgument = "barcodeReader_getModeArgument";
    public static final String barcodeReader_setModeArgument = "barcodeReader_setModeArgument";

    /// DCE Methods
    public static final String cameraEnhancer_createInstance = "cameraEnhancer_createInstance";
    public static final String cameraEnhancer_dispose = "cameraEnhancer_dispose";
    public static final String cameraEnhancer_setScanRegion = "cameraEnhancer_setScanRegion";
    public static final String cameraEnhancer_setScanRegionVisible = "cameraEnhancer_setScanRegionVisible";
    public static final String cameraEnhancer_setOverlayVisible = "cameraEnhancer_setOverlayVisible";
    public static final String cameraEnhancer_openCamera = "cameraEnhancer_openCamera";
    public static final String cameraEnhancer_closeCamera = "cameraEnhancer_closeCamera";
    public static final String cameraEnhancer_selectCamera = "cameraEnhancer_selectCamera";
    public static final String cameraEnhancer_turnOnTorch = "cameraEnhancer_turnOnTorch";
    public static final String cameraEnhancer_turnOffTorch = "cameraEnhancer_turnOffTorch";

    public static final String cameraView_torchButton = "cameraView_torchButton";

    public static final String cameraEnhancer_enable_enhanced_features = "cameraEnhancer_enable_enhanced_features";
    public static final String cameraEnhancer_disable_enhanced_features = "cameraEnhancer_disable_enhanced_features";
    public static final String cameraEnhancer_set_zoom_factor = "cameraEnhancer_set_zoom_factor";
    public static final String cameraEnhancer_get_zoom_factor = "cameraEnhancer_get_zoom_factor";
    public static final String cameraEnhancer_set_zoom_range = "cameraEnhancer_set_zoom_range";
    public static final String cameraEnhancer_get_zoom_range = "cameraEnhancer_get_zoom_range";
    public static final String cameraEnhancer_get_max_zoom_factor = "cameraEnhancer_get_max_zoom_factor";

}