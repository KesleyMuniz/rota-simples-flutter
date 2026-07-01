class Validators {
  Validators._();

  static final RegExp _emailRegExp = RegExp(
    r'^[\w.+-]+@[\w-]+(\.[\w-]+)*\.com(\.br)?$',
    caseSensitive: false,
  );

  static bool? email(String? value) {
    if (value == null || value.trim().isEmpty) {
      return false;
    }
    if (!_emailRegExp.hasMatch(value.trim())) {
      return false;
    }
    return null;
  }

  static final RegExp _specialCharRegExp = RegExp(r'[^A-Za-z0-9]');
  static final RegExp _uppercaseRegExp = RegExp(r'[A-Z]');
  static final RegExp _lowercaseRegExp = RegExp(r'[a-z]');
  static final RegExp _digitRegExp = RegExp(r'[0-9]');

  static bool passwordHasValidLength(String value) =>
      value.length >= 6 && value.length <= 20;

  static bool passwordHasSpecialChar(String value) =>
      _specialCharRegExp.hasMatch(value);

  static bool passwordHasUpperAndLowerCase(String value) =>
      _uppercaseRegExp.hasMatch(value) && _lowercaseRegExp.hasMatch(value);

  static bool passwordHasDigit(String value) => _digitRegExp.hasMatch(value);

  static bool passwordHasNoSequentialDigits(String value) =>
      !_hasSequentialDigits(value);

  static (bool, String?) password(String? value) {
    if (value == null || !passwordHasValidLength(value)) {
      return (false, 'A senha deve ter entre 6 e 20 caracteres.');
    }
    if (!passwordHasSpecialChar(value)) {
      return (false, 'A senha precisa de um caractere especial.');
    }
    if (!passwordHasUpperAndLowerCase(value)) {
      return (false, 'A senha precisa de letra maiúscula e minúscula.');
    }
    if (!passwordHasDigit(value)) {
      return (false, 'A senha precisa de pelo menos 1 número.');
    }
    if (!passwordHasNoSequentialDigits(value)) {
      return (false, 'A senha não pode ter sequência numérica (ex.: 123, 987).');
    }
    return (true, null);
  }

  static bool _hasSequentialDigits(String value) {
    for (var i = 0; i <= value.length - 3; i++) {
      final a = value.codeUnitAt(i);
      final b = value.codeUnitAt(i + 1);
      final c = value.codeUnitAt(i + 2);
      final isDigits = a >= 48 && a <= 57 && b >= 48 && b <= 57 && c >= 48 && c <= 57;
      if (!isDigits) {
        continue;
      }
      if ((b - a == 1 && c - b == 1) || (a - b == 1 && b - c == 1)) {
        return true;
      }
    }
    return false;
  }
}
