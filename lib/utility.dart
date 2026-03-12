class Utility {
  static bool validateEmail(String text) {
    return RegExp(
      r"^[a-zA-Z0-9]+(\.[a-zA-Z0-9]+)*@[a-zA-Z0-9]+(\.[a-zA-Z]{2,4}){1,2}$",
    ).hasMatch(text);
  }
  // password validate
  static bool validatePassword(String text) {
    return RegExp(
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$'
    ).hasMatch(text);
  }

  // static bool validatePassword(String text){
  //   if (validateCapital(text)) {
  //     if (validateSmall(text)) {
  //       if (validateNumber(text)) {
  //         if (validateSpecial(text)) {
  //
  //         }
  //       }
  //     }
  //   }
  // }
  static bool validateCapital(String text){
    return RegExp(
        r'^(?=.*?[A-Z])'
    ).hasMatch(text);
  }
  static bool validateSmall(String text){
    return RegExp(
        r'^(?=.*?[a-z])'
    ).hasMatch(text);
  }
  static bool validateNumber(String text){
    return RegExp(
        r'^(?=.*?[0-9])'
    ).hasMatch(text);
  }
  static bool validateSpecial(String text){
    return RegExp(
        r'^(?=.*?[!@#\$&*~])'
    ).hasMatch(text);
  }
}
