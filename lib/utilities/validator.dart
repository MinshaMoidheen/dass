class Validator {
  static String? validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return 'Email is required';
    } else {
      // Regular expression for a valid email address
      final emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
      if (!emailRegExp.hasMatch(email)) {
        return 'Enter a valid email address';
      }
    }
    return null;
  }

  static String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return 'Password is required';
    } else {
      // Password should be at least 8 characters long
      if (password.length < 6) {
        return 'Password must be at least 6 characters long';
      }
    }
    return null;
  }

  static String? validatePhoneNumber(String? phoneNumber) {
    if (phoneNumber == null || phoneNumber.isEmpty) {
      return 'Phone number is required';
    } else {
      // Regular expression for a valid phone number (allowing only digits and optional + sign)
      final phoneRegExp = RegExp(r'^\+?[0-9]+$');
      if (!phoneRegExp.hasMatch(phoneNumber)) {
        return 'Enter a valid phone number';
      }
    }
    return null;
  }


}
