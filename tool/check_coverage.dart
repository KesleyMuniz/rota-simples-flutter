// Verificador de cobertura de testes.
//
// Lê o relatório LCOV gerado por `flutter test --coverage`
// (coverage/lcov.info) e falha se a cobertura de linhas ficar
// abaixo do limite mínimo.
//
// Uso:
//   dart run tool/check_coverage.dart            # limite padrão (80%)
//   dart run tool/check_coverage.dart --min 90   # limite customizado
//   dart run tool/check_coverage.dart --file caminho/lcov.info
//
// Não requer o binário `lcov` instalado — faz o parsing do LCOV
// direto em Dart, então roda igual em Windows, Linux e no CI.

import 'dart:io';

const _defaultMin = 80.0;
const _defaultPath = 'coverage/lcov.info';

void main(List<String> args) {
  var minCoverage = _defaultMin;
  var path = _defaultPath;

  for (var i = 0; i < args.length; i++) {
    switch (args[i]) {
      case '--min':
        minCoverage = double.parse(args[++i]);
      case '--file':
        path = args[++i];
    }
  }

  final file = File(path);
  if (!file.existsSync()) {
    stderr.writeln(
      'Relatório de cobertura não encontrado em "$path".\n'
      'Rode antes: flutter test --coverage',
    );
    exit(2);
  }

  var totalLines = 0;
  var hitLines = 0;
  final perFile = <String, ({int found, int hit})>{};
  var currentFile = '';
  var fileFound = 0;
  var fileHit = 0;

  for (final line in file.readAsLinesSync()) {
    if (line.startsWith('SF:')) {
      currentFile = line.substring(3);
      fileFound = 0;
      fileHit = 0;
    } else if (line.startsWith('DA:')) {
      // DA:<linha>,<execuções>
      final parts = line.substring(3).split(',');
      final hits = int.tryParse(parts[1]) ?? 0;
      fileFound++;
      totalLines++;
      if (hits > 0) {
        fileHit++;
        hitLines++;
      }
    } else if (line == 'end_of_record') {
      perFile[currentFile] = (found: fileFound, hit: fileHit);
    }
  }

  if (totalLines == 0) {
    stderr.writeln('Nenhuma linha instrumentada encontrada em "$path".');
    exit(2);
  }

  final coverage = hitLines / totalLines * 100;

  // Lista os arquivos com menor cobertura para orientar onde testar.
  final ranked = perFile.entries
      .where((e) => e.value.found > 0)
      .map((e) => (
            path: e.key,
            pct: e.value.hit / e.value.found * 100,
            found: e.value.found,
            hit: e.value.hit,
          ))
      .toList()
    ..sort((a, b) => a.pct.compareTo(b.pct));

  stdout.writeln('Cobertura por arquivo (menor primeiro):');
  for (final f in ranked.take(10)) {
    final pct = f.pct.toStringAsFixed(1).padLeft(5);
    stdout.writeln('  $pct%  (${f.hit}/${f.found})  ${f.path}');
  }

  final total = coverage.toStringAsFixed(2);
  final min = minCoverage.toStringAsFixed(2);
  stdout.writeln('');
  stdout.writeln('Total: $total%  (linhas $hitLines/$totalLines)');
  stdout.writeln('Mínimo exigido: $min%');

  if (coverage + 1e-9 < minCoverage) {
    stderr.writeln('\n❌ Cobertura $total% abaixo do mínimo $min%.');
    exit(1);
  }

  stdout.writeln('\n✅ Cobertura dentro do limite.');
}
