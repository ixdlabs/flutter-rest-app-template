import 'package:flutte_rest_app_template/models/auth/user.dart';

/// An abstract class defining the contract for authentication services.
///
/// This service provides methods for signing in with credentials and setting up a new password.
abstract class AuthService {
  /// Signs in a user using their email and password.
  ///
  /// - [username]: The username of the user.
  /// - [password]: The password of the user.
  ///
  /// Returns an [AuthResult] containing the user session or session token if successful.
  Future<User?> login({required String username, required String password});
}
