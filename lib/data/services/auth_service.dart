import '../models/user_model.dart';

class AuthService {
  Future<UserModel> login(
    String email,
    String password,
    String deviceId,
  ) async {
    // final url = Uri.parse(AppConstants.baseURL);
    //Api Is Not Working so changed to dummy data 
    try {
      await Future.delayed(Duration(seconds: 3));

      final response = {
        "id": "123",
        "email": email,
        "name": "John Doe",
        "access_token": "abc123xyz",
      };

      return UserModel.fromJson(response);
    } catch (e) {
      throw Exception("Login failed: $e");
    }
  }
}
