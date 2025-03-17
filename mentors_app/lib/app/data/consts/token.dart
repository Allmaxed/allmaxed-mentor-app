import 'package:get_storage/get_storage.dart';

class StorageService {
  final GetStorage _storage = GetStorage();

  // Store Token
  void saveToken(String token) {
    _storage.write('auth_token', token);
  }

  // Retrieve Token
  String? getToken() {
    return _storage.read('auth_token');
  }

  // Clear Token (Logout)
  void clearToken() {
    _storage.remove('auth_token');
  }

  // Check if token exists
  bool hasToken() {
    return _storage.hasData('auth_token');
  }
}

// Global instance
final StorageService storageService = StorageService();
