/// Names and keys the `measurements` blob of a product line is built from.
///
/// The backend stores `measurements` as a free-form JSON blob that only the
/// apps read and write, so the apps must agree on its shape. These constants,
/// together with `PersonMeasurementsModel`, are that agreement.
class MeasurementConstants {
  const MeasurementConstants._();

  /// JSON key of the measurements blob on a product line.
  static const String jsonKey = 'measurements';

  /// Base name for a person on a product line's measurements.
  static const String defaultPersonName = 'Person';

  /// Default name for the person at [index], e.g. "Person 1".
  static String personNameAt(int index) => '$defaultPersonName ${index + 1}';
}

/// Keys of values that belong to the product itself (e.g. a vehicle), not to a
/// person. They are stored beside the people in the `measurements` blob, never
/// inside one.
class VehicleMeasurementKeys {
  const VehicleMeasurementKeys._();

  /// Odometer reading of a vehicle line.
  static const String runningKilometers = 'running_kilometers';

  /// Display name of the odometer value.
  static const String runningKilometersName = 'Running Kilometers';

  /// Every key stored at the top level of the blob instead of under a person.
  static const Set<String> all = {runningKilometers};

  /// Whether [key] (as stored, e.g. "Running Kilometers" or
  /// "running_kilometers") is one of [all].
  static bool isVehicleKey(String key) => all.contains(normalize(key));

  /// Whether [key] is the odometer value, however it was stored.
  static bool isRunningKilometers(String key) =>
      normalize(key) == runningKilometers;

  /// The backend form of a measurement name: lower case, underscores.
  static String normalize(String key) => key.toLowerCase().replaceAll(' ', '_');
}
