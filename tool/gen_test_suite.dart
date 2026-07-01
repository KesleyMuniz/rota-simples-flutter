// Gera o agregador `test/all_test.dart`, que reúne todos os testes que
// moram dentro de `lib/` (fora da convenção `test/` na raiz) para que
// `flutter test` — sem argumentos — consiga rodá-los da raiz do projeto.
//
// Uso:
//   dart run tool/gen_test_suite.dart
//
// Rode isto sempre que adicionar/remover um arquivo *_test.dart em lib/.

import 'dart:io';

void main() {
  final libDir = Directory('lib');
  if (!libDir.existsSync()) {
    stderr.writeln('Pasta "lib" não encontrada. Rode na raiz do projeto.');
    exit(2);
  }

  final testFiles =
      libDir
          .listSync(recursive: true)
          .whereType<File>()
          .where((f) => f.path.replaceAll('\\', '/').endsWith('_test.dart'))
          .map((f) => f.path.replaceAll('\\', '/'))
          .toList()
        ..sort();

  final buffer = StringBuffer()
    ..writeln('// GERADO AUTOMATICAMENTE — não edite à mão.')
    ..writeln('// Regenerar: dart run tool/gen_test_suite.dart')
    ..writeln('//')
    ..writeln('// Agrega os testes que ficam dentro de lib/ para que')
    ..writeln('// `flutter test` rode todos a partir da raiz do projeto.')
    ..writeln("import 'package:flutter_test/flutter_test.dart';");

  final entries = <(String alias, String label)>[];
  for (var i = 0; i < testFiles.length; i++) {
    final path = testFiles[i];
    final importPath = 'package:rotasimples/${path.substring('lib/'.length)}';
    final alias = 't$i';
    final label = path.substring('lib/'.length);
    buffer.writeln("import '$importPath' as $alias;");
    entries.add((alias, label));
  }

  buffer
    ..writeln()
    ..writeln('void main() {');
  for (final (alias, label) in entries) {
    buffer.writeln("  group('$label', $alias.main);");
  }
  buffer.writeln('}');

  // Fica numa subpasta própria, excluída da análise do VS Code
  // (dart.analysisExcludedFolders) para não poluir o painel Testing,
  // mas ainda é encontrada pelo `flutter test` na raiz.
  Directory('test/aggregate').createSync(recursive: true);
  File('test/aggregate/all_test.dart').writeAsStringSync(buffer.toString());

  stdout.writeln(
    'Gerado test/aggregate/all_test.dart com '
    '${testFiles.length} arquivo(s) de teste.',
  );
}
