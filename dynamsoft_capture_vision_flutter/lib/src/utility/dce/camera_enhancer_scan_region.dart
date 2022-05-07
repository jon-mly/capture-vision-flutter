import '../common.dart';

/// Describes the scan region of the camera.
///
/// When [regionMeasuredByPercentage] set to true, the values of Top, Left, Right, Bottom indicate the percentage (from 0 to 100); otherwise, they refer to the coordinates.
class Region extends Serializer {
  final int regionTop;
  final int regionBottom;
  final int regionLeft;
  final int regionRight;
  final bool regionMeasuredByPercentage;
  Region({
    required this.regionTop,
    required this.regionBottom,
    required this.regionLeft,
    required this.regionRight,
    required this.regionMeasuredByPercentage
  });

  @override
  Map<String, dynamic> toJson() {
    return {'regionTop':regionTop,
            'regionBottom':regionBottom,
            'regionLeft':regionLeft,
            'regionRight':regionRight,
            'regionMeasuredByPercentage':regionMeasuredByPercentage
    };
  }


}