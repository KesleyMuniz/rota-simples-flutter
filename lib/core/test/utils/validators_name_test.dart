import 'package:flutter_test/flutter_test.dart';
import 'package:rotasimples/core/utils/validators.dart';

void main() {
  group('Validators.name', () {
    test('retorna null para nome completo válido', () {
      expect(Validators.name('João Silva'), isNull);
    });

    test('retorna null para nome com acentos', () {
      expect(Validators.name('José André'), isNull);
    });

    test('retorna null para nome com três partes', () {
      expect(Validators.name('Ana Maria Costa'), isNull);
    });

    test('retorna false para apenas primeiro nome', () {
      expect(Validators.name('João'), isFalse);
    });

    test('retorna false para string vazia', () {
      expect(Validators.name(''), isFalse);
    });

    test('retorna false para null', () {
      expect(Validators.name(null), isFalse);
    });

    test('retorna false para apenas espaços', () {
      expect(Validators.name('   '), isFalse);
    });
  });
}
