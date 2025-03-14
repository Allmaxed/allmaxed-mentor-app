mixin FormValidatorMixin {
  bool emailValidator(String value) {
    return RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
        .hasMatch(value);
  }

  bool phoneNoValidator(String value) {
    return RegExp(r'^(?:\+91|91)?[6789]\d{9}$').hasMatch(value);
  }

  bool nameValidator(String value) {
    return RegExp(r"^[a-zA-Z\s.]+$").hasMatch(value);
  }

  bool passwordValidator(String value) {
    return RegExp(
            r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$')
        .hasMatch(value);
  }
}
