class Api {
  Api._();
  static final Api _instance = Api._();
  factory Api() => _instance;

  /// TODO: Add base URLs for your API endpoints.
  final String baseUrl = 'https://dummyjson.com';

  String get signIn => '$baseUrl/auth/login';

  String get products => '$baseUrl/products';

  String get profile => '$baseUrl/Patients/profile';
  String get feedback => '$baseUrl/Patients/feedback';

  String get wellnessPlan => '$baseUrl/WellnessPlan';
  String get activePlan => '$wellnessPlan/active-plan';
  String get planMasterData => '$wellnessPlan/master-data';
  String planExperimentalExercises(int id) =>
      '$wellnessPlan/$id/experimental_exercises';
  String get pastPlans => '$wellnessPlan/past-plans';
  String updateStatus(int id) => '$wellnessPlan/$id/status';

  String get planBuddies => '$baseUrl/WellnessPlanBuddies';

  String get sessionMasterData => '$baseUrl/ClientSession/master-data';

  String get patients => '$baseUrl/Patients';
  String get patientOutcomeMeasureHistory => '$patients/outcomeMeasureHistory';

  String get values => '$baseUrl/ClientValues';
  String get patientValues => '$patients/client_values';
  String deleteValue(String id) => '$patientValues/$id';
}
