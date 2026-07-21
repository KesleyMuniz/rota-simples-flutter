# Guia de contribuição — rotasimples

Este documento define o **fluxo de branches** e o **padrão de commits** do projeto.

---

## 1. Modelo de branches — Git Flow

### Branches permanentes

| Branch | Papel | Recebe merge de | Deploy |
|---|---|---|---|
| `main` | Produção. Sempre estável e "releasável". | `release/*`, `hotfix/*` | Sim (release oficial) |
| `develop` | Integração. Onde as features se juntam. | `feature/*`, `release/*`, `hotfix/*` | Não |

> Nunca commite direto na `main`. Nunca commite direto na `develop` (use branch de feature + PR).

### Branches temporárias

| Prefixo | Nasce de | Volta para | Quando usar |
|---|---|---|---|
| `feature/` | `develop` | `develop` | Nova funcionalidade ou tela |
| `fix/` | `develop` | `develop` | Correção de bug não urgente |
| `release/` | `develop` | `main` **e** `develop` | Preparar uma versão (bump, ajustes finais) |
| `hotfix/` | `main` | `main` **e** `develop` | Correção urgente em produção |
| `chore/` | `develop` | `develop` | Config, build, dependências, tooling |
| `docs/` | `develop` | `develop` | Só documentação |

### Fluxo típico de uma feature

```bash
git checkout develop
git pull origin develop
git checkout -b feature/login-screen

# ... trabalha, commita ...

git push -u origin feature/login-screen
# abre PR:  feature/login-screen  ->  develop
```

### Fluxo de release

```bash
git checkout -b release/1.1.0 develop
# bump de versão no pubspec.yaml, ajustes finais, changelog
git checkout main && git merge --no-ff release/1.1.0
git tag -a v1.1.0 -m "v1.1.0"
git checkout develop && git merge --no-ff release/1.1.0
git branch -d release/1.1.0
```

### Fluxo de hotfix

```bash
git checkout -b hotfix/crash-no-login main
# corrige, bump de patch
git checkout main && git merge --no-ff hotfix/crash-no-login && git tag -a v1.1.1 -m "v1.1.1"
git checkout develop && git merge --no-ff hotfix/crash-no-login
git branch -d hotfix/crash-no-login
```

---

## 2. Padrão de commits — Conventional Commits

Formato:

```
<tipo>(<escopo opcional>): <descrição no imperativo, minúscula>

[corpo opcional]

[rodapé opcional — BREAKING CHANGE, refs]
```

### Tipos

| Tipo | Uso |
|---|---|
| `feat` | Nova funcionalidade |
| `fix` | Correção de bug |
| `chore` | Build, deps, config, tooling (sem código de app) |
| `docs` | Documentação |
| `style` | Formatação, sem mudança de lógica |
| `refactor` | Refatoração sem mudar comportamento |
| `test` | Testes |
| `perf` | Melhoria de performance |

### Escopos sugeridos (features do projeto)

`auth`, `route-planning`, `delivery`, `history`, `profile`, `subscription`, `design-system`, `core`

### Exemplos

```
feat(auth): adiciona validação em tempo real na tela de login
fix(route-planning): corrige ordem das paradas ao remover parada
chore(deps): atualiza freezed para 3.0
docs: adiciona guia de branches
refactor(design-system): extrai RSInput errorBorder
```

### Regras rápidas

- Descrição no **imperativo** e em **minúscula**: "adiciona", não "adicionado" / "Adiciona".
- Sem ponto final na descrição.
- Máx. ~72 caracteres na primeira linha.
- Mudança que quebra compatibilidade → `feat!:` ou rodapé `BREAKING CHANGE:`.

---

## 3. Versionamento — SemVer

`MAJOR.MINOR.PATCH` (ex.: `1.2.0`), refletido no `pubspec.yaml` (`version:`) e na tag `vX.Y.Z`.

- **MAJOR** — mudança incompatível.
- **MINOR** — nova funcionalidade compatível (`feat`).
- **PATCH** — correção compatível (`fix`).
