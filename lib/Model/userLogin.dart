class UserLogin {
  String email;
  String password;

  UserLogin({required this.email, required this.password});

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
    };
  }
}

class UserLoginResponse {
  String accessToken;
  String tokenType;

  UserLoginResponse({required this.accessToken, required this.tokenType});

  factory UserLoginResponse.fromJson(Map<String, dynamic> json) {
    return UserLoginResponse(
      accessToken: json['access_token'],
      tokenType: json['token_type'],
    );
  }
}
