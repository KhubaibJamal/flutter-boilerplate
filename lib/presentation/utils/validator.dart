class Validator {
  static String emailPattern =
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
  static String? validateEmail(String? email) {
    if ((email ??= '').trim().isEmpty) {
      return Strings.emptyEmailMessage;
    } else if (!RegExp(emailPattern).hasMatch(email)) {
      return Strings.invalidEmailMessage;
    } else {
      return null;
    }
  }

  static String? validateUrl(String value) {
    // Regular expression for a simple URL validation
    // This may not cover all edge cases, but it's a basic example
    final urlRegExp = RegExp(
      r'^(http(s)?:\/\/)?([0-9a-zA-Z-]+\.)+[a-zA-Z]{2,}(:[0-9]+)?(\/.*)?$',
    );

    if (urlRegExp.hasMatch(value)) {
      return null; // Valid URL
    } else {
      return 'Invalid URL';
    }
  }

  static String? emptyValueValidation(
    String? value, {
    String? errmsg = Strings.emptyValueMessage,
  }) {
    return (value ??= '').trim().isEmpty ? errmsg : null;
  }

  static String? validatePhoneNumber(String? value) {
    // return null;

    final pattern = RegExp(r'^[0-9]{6,15}$');
    if ((value ??= '').trim().isEmpty) {
      return Strings.invalidPhoneMessage;
    } else if (!pattern.hasMatch(value)) {
      return Strings.invalidPhoneMessage;
    } else {
      return null;
    }
  }

  static String? validateName(
    String? value, {
    String? errmsg = Strings.nameValueMessage,
  }) {
    final pattern = RegExp(r'^[a-zA-Z ]+$');
    value = (value ?? '').trim();
    if (value.isEmpty) {
      return errmsg;
    } else if (!pattern.hasMatch(value)) {
      return Strings.invalidNameMessage;
    }
    return null;
  }

  static String? nullCheckValidator(String? value, {int? requiredLength}) {
    if (value == null || value.isEmpty) {
      return 'Field must not be empty';
    } else if (requiredLength != null) {
      if (value.length < requiredLength) {
        return 'Text must be $requiredLength character long';
      } else {
        return null;
      }
    }

    return null;
  }

  static String? validatePassword(
    String? password, {
    String? secondFieldValue,
  }) {
    if (password == null || password.isEmpty) {
      return 'Please enter password';
    }

    if (secondFieldValue != null && password != secondFieldValue) {
      return 'Password does not match';
    }

    final pattern = RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^A-Za-z0-9]).{8,}$',
    );

    if (!pattern.hasMatch(password)) {
      return 'Password must be at least 8 characters long,'
          ' include 1 uppercase, 1 lowercase, and 1 special character';
    }

    return null;
  }

  static String? validateZipCode(String? value) {
    final pattern = RegExp(
      r'^[0-9]{4,10}$',
    ); // Adjust length based on your country
    if ((value ??= '').trim().isEmpty) {
      return 'Please enter ZIP code';
    } else if (!pattern.hasMatch(value)) {
      return 'Please enter valid ZIP code';
    }
    return null;
  }
}

// regex Strings.(.*?)(?=[,|\n|\)|}|'|"|])
class Strings {
  static const String invalidEmailMessage = 'Please enter valid email address';
  static const String emptyEmailMessage = 'Please enter email';
  static const String emptyValueMessage = 'Please enter some text';
  static const String nameValueMessage = 'Enter name here';
  static const String invalidNameMessage = 'Please enter only alphabets';
  static const String invalidPhoneMessage = 'Please enter valid Phone Number';
}
