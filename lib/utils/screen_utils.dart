class ScreenUtil {
  final _pixelDesignRatio = 1440 / 1024;
  double _devicePixelRatio = 1;

  double _pxDeviceRatio = 1;

  ScreenUtil._internal();

  static final ScreenUtil _instance = ScreenUtil._internal();

  factory ScreenUtil() {
    return _instance;
  }

  ///use for both width and fontSize value
  ///size params must be in px
  double responsiveSize(double designSize) {
    //convert param from px to dp
    double responsiveSize = designSize * _pxDeviceRatio / _pixelDesignRatio;
    return responsiveSize / _devicePixelRatio;
  }

  //The value of deviceWidth & deviceHeight params are dp
  static void setInitialValues(
      double deviceWidth, double deviceHeight, double devicePixelRatio) {
    final double dpDeviceRatio = deviceWidth / deviceHeight;
    _instance._devicePixelRatio = devicePixelRatio;
    _instance._pxDeviceRatio = dpDeviceRatio * devicePixelRatio;
  }
}
