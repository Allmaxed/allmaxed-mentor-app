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
    return RegExp(r'^.{8,}$').hasMatch(value);
  }

  bool ageValidator(String value) {
    return RegExp(r'^(1[0-4][0-9]|[2-9][0-9])$').hasMatch(value);
  }

  bool adhaarValidator(String value) {
    return RegExp(r'^\d{12}$').hasMatch(value);
  }

  bool locationValidator(String value) {
    return RegExp(r'^[A-Za-z\s]{2,50}$').hasMatch(value);
  }

  bool addressValidator(String value) {
    return RegExp(r'^[A-Za-z0-9\s,.\-/#\n]{10,}$').hasMatch(value);
  }

  bool urlValidator(String value) {
    return RegExp(
      r'^(https?:\/\/)?(www\.)?[a-zA-Z0-9-]+(\.[a-zA-Z]{2,})+([\/?].*)?$',
      caseSensitive: false,
    ).hasMatch(value);
  }
}
