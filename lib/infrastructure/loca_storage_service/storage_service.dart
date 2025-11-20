import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageService {
  static const storage = FlutterSecureStorage();

  // keys
  static const _authToken = "authToken";
  static const _rememberMe = "rememberMe";
  static const _checkLocalAuth = "checkLocalAuth";

  static Future<String> getAuthToken() async {
    return await storage.read(key: _authToken) ?? "";
  }

  static Future<void> setAuthToken(String authtoken) async {
    await storage.write(key: _authToken, value: authtoken);
  }

  static Future<void> setRememberMe(String rememberMe) async {
    await storage.write(key: _rememberMe, value: rememberMe);
  }

  static Future<String> getRememberMe() async {
    return await storage.read(key: _rememberMe) ?? "";
  }

  static Future<void> setLocalAuth(String checkLocalAuth) async {
    await storage.write(key: _checkLocalAuth, value: checkLocalAuth);
  }

  static Future<String> getLocalAuth() async {
    return await storage.read(key: _checkLocalAuth) ?? "";
  }

  static Future<void> deleteAuthUser() async {
    await storage.delete(key: _authToken);
    await storage.delete(key: _rememberMe);
  }

  static Future<void> clearAll() async {
    await storage.deleteAll();
  }
}
