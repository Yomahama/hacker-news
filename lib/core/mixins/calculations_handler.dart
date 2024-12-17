mixin CalculationHandler {
  double getPercent(double current, double max, [double min = 0]) {
    return ((max - current - min) / (max - min)).clamp(0, 1);
  }
}
