class AuthToken {
  late String _bearerToken;
  String getter() {
    return _bearerToken;
  }

  void setter(String token) {
    _bearerToken = token;
  }
}

AuthToken authToken = AuthToken();
