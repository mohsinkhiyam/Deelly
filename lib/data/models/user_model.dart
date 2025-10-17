class UserModel {
  final String? id;
  final String email;
  final String? name;
  final String? accessToken;

  UserModel({
    this.id,
    required this.email,
    this.name,
    this.accessToken,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id']?.toString(),
      email: json['email'] ?? '',
      name: json['name'],
      accessToken: json['access_token'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'access_token': accessToken,
      };
}
