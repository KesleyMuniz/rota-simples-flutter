# 🚚 rotasimples

> **Otimize suas entregas.** O app que decide a melhor ordem para você visitar suas paradas — e deixa a navegação com o Google Maps ou o Waze.

---

## 📖 Índice

- [O que é o rotasimples?](#-o-que-é-o-rotasimples)
- [Para quem não é técnico](#-para-quem-não-é-técnico)
- [Como funciona (a ideia)](#-como-funciona-a-ideia)
- [Funcionalidades](#-funcionalidades)
- [Tecnologias](#-tecnologias)
- [Arquitetura do projeto](#-arquitetura-do-projeto)
- [Estrutura de pastas](#-estrutura-de-pastas)
- [Design System](#-design-system)
- [Como rodar o projeto](#-como-rodar-o-projeto)
- [Testes e cobertura](#-testes-e-cobertura)
- [Fluxo de versionamento (Git)](#-fluxo-de-versionamento-git)
- [Modelo de domínio](#-modelo-de-domínio)
- [Glossário](#-glossário)

---

## 🎯 O que é o rotasimples?

O **rotasimples** é um aplicativo de celular (Android e iOS) para **entregadores**.

Imagine que você tem **15 pacotes** para entregar hoje, em 15 endereços diferentes espalhados pela cidade. Em que ordem você deve ir para gastar **menos tempo e menos combustível**? Fazer essa conta na cabeça é difícil e quase sempre dá errado.

O rotasimples resolve isso: você informa todas as paradas, e o app **calcula a melhor sequência de visita**. Depois, é só tocar em uma parada para abrir o Google Maps ou o Waze e seguir a navegação.

> **Importante:** o app **não** faz a navegação "vire à direita, siga em frente". Ele só decide a **ordem inteligente** das paradas. A navegação em si fica com os apps que você já conhece (Maps/Waze).

Este é um **projeto pessoal de aprendizado** — modelagem de dados, geolocalização, algoritmos de otimização de rotas e gerenciamento de estado.

---

## 👋 Para quem não é técnico

Pense no app como um **assistente de logística de bolso**:

1. Você cadastra os endereços das suas entregas (digitando ou importando uma planilha).
2. O app organiza tudo na **ordem mais rápida** de percorrer.
3. Você segue a lista, marcando cada entrega como concluída.
4. No fim do dia, vê seu **histórico** (quantas entregas, distância percorrida, etc.).

Tudo isso com uma tela **escura, limpa e direta**, pensada para ser usada com uma mão só, na rua, no sol.

---

## 🧠 Como funciona (a ideia)

| Etapa | O que acontece |
|---|---|
| **1. Cadastro** | Você adiciona as paradas (endereço, encomendas, observações). |
| **2. Otimização** | O app calcula a melhor ordem usando o algoritmo do **"vizinho mais próximo"**. |
| **3. Distância real** | As distâncias são calculadas por **rua de verdade** (via API), nunca em linha reta. |
| **4. Execução** | Você segue a rota, abre o Maps/Waze em cada parada e marca como entregue. |
| **5. Histórico** | Ao concluir o turno, os dados ficam salvos para consulta. |

**Grupos prioritários:** dá para marcar algumas paradas como prioridade (ex.: uma entrega agendada para as 10h), e o app respeita isso na ordenação (prioridade rígida).

**Sem internet?** Você ainda consegue ler a rota atual, editar, marcar entregas e concluir o turno (sincroniza sozinho ao reconectar). Login, cadastro e adicionar novas paradas exigem conexão.

---

## ✨ Funcionalidades

- 🔐 **Login / Cadastro** (email + senha)
- 📍 **Planejamento de rota** — adicionar/editar paradas, importar planilha, revisar endereços
- 🧮 **Otimização automática** da ordem das paradas
- 🚦 **Grupos prioritários** (prioridade rígida)
- 📦 **Progresso da entrega** — marcar como entregue, concluir turno
- 🕑 **Histórico** de turnos
- 👤 **Perfil** — editar dados, excluir conta
- 💳 **Assinatura** (modelo gratuito × PRO)
- 🗺️ **Imagem de satélite** das paradas (Mapbox) + link para Street View

---

## 🛠️ Tecnologias

| Área | Escolha |
|---|---|
| **Framework** | [Flutter](https://flutter.dev) (Dart) — um código, dois apps (Android + iOS) |
| **Gerenciamento de estado** | [Riverpod](https://riverpod.dev) com geração de código (`@riverpod`) |
| **Modelos de dados** | [freezed](https://pub.dev/packages/freezed) + `json_serializable` |
| **Fontes** | Sora (títulos) + Manrope (textos), via `google_fonts` |
| **Ícones** | SVG inline (`flutter_svg`) — sem fontes de ícone, sem emoji na UI |
| **Mapa/satélite** | [Mapbox](https://www.mapbox.com) (camada de satélite) |
| **Navegação de telas** | `Navigator.pushNamed` (rotas nomeadas, sem `go_router`) |

---

## 🏛️ Arquitetura do projeto

O projeto segue **Clean Architecture** organizada **por funcionalidade** (*feature-first*).

### O que isso significa (de forma simples)

Cada funcionalidade (login, rota, perfil…) é uma "caixinha" independente, e dentro de cada caixinha o código é separado em **camadas** com responsabilidades bem definidas:

```
┌───────────────────────────────────────────────┐
│  presentation  → o que o usuário VÊ (telas)     │
│  application   → a "cola" (estado, Riverpod)    │
│  domain        → as REGRAS de negócio           │
│  data          → de onde vêm os DADOS (API/DB)  │
└───────────────────────────────────────────────┘
```

**Por que separar assim?** Porque isso deixa o código **fácil de testar, de mudar e de entender**. Se amanhã trocarmos a fonte de dados (de uma API para um banco local), só a camada `data` muda — as telas e as regras continuam iguais.

- **`domain`** é o coração: define *o que* o app faz (as entidades e regras), sem saber *como*.
- **`data`** implementa o *como* (buscar da internet, salvar no cache).
- **`application`** conecta as regras às telas usando Riverpod.
- **`presentation`** são as telas e componentes visuais.

---

## 📁 Estrutura de pastas

```
lib/
├── core/                        # Base compartilhada por todo o app
│   ├── design_system/           # Cores, fontes, espaçamentos e componentes visuais
│   │   ├── tokens/              # RSColors, RSType, RSSpacing, RSSizes, RSRadius, RSShadows
│   │   ├── theme/               # Tema (ThemeData) do app
│   │   └── widgets/             # Componentes reutilizáveis (RSButton, RSInput, RSTopBar…)
│   ├── routes/                  # Rotas nomeadas + AppRoutes
│   ├── network/                 # Conectividade / cliente HTTP (contratos)
│   ├── storage/                 # Persistência local (contratos)
│   └── utils/                   # Utilitários (validadores, coordenadas…)
│
├── features/                    # Cada funcionalidade em sua própria pasta
│   ├── auth/                    # Splash, Login, Cadastro, Recuperar/Trocar senha
│   ├── route_planning/          # Home, paradas, importar, revisar, rota otimizada
│   ├── delivery_progress/       # Progresso da entrega, turno concluído
│   ├── history/                 # Histórico
│   └── profile/                 # Perfil, editar, excluir conta
│
└── main.dart                    # Ponto de entrada do app
```

> Cada tela tem sua própria pasta com **rota**, **estado** e **componentes** independentes, permitindo reutilização.
>
> Dentro de cada feature, a estrutura padrão é: `domain/` · `data/` · `application/` · `presentation/`.

---

## 🎨 Design System

O app tem um **sistema de design próprio** (prefixo `RS` = *rotasimples*), garantindo visual consistente. Tema **escuro** por padrão, com acento **teal `#00C2A8`**.

### Tokens (as "peças de Lego" do visual)

| Token | O que define | Exemplos |
|---|---|---|
| `RSColors` | Cores | `accent`, `bgApp`, `textPrimary`, `error` |
| `RSType` | Tipografia | `appBarTitle()`, `body()`, `cta()` |
| `RSSpacing` | Espaçamentos | `sm` (8), `md` (12), `lg` (18), `xl` (22) |
| `RSSizes` | Tamanhos fixos | `buttonHeight`, `inputHeight` |
| `RSRadius` | Cantos arredondados | `input` (14), `button` (16) |
| `RSShadows` | Sombras | `ctaAccent`, `card` |

### Componentes prontos

`RSButton` · `RSInput` · `RSCard` · `RSBadge` · `RSTopBar` · `RSIcon` · `RSIconButton` · `RSIconBadge` · `RSAlert` · `RSInlineLink` · `RSLogo` · `showRSBottomSheet`

---

## 🚀 Como rodar o projeto

### Pré-requisitos

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (canal stable)
- Um dispositivo físico ou emulador (Android/iOS)

### Passos

```bash
# 1. Instale as dependências
flutter pub get

# 2. Gere o código (freezed, riverpod, json)
dart run build_runner build --delete-conflicting-outputs

# 3. Rode o app (com um dispositivo conectado)
flutter run
```

> **Nota de ambiente:** neste setup, os SDKs, caches e o projeto ficam no disco `D:\` (o `C:\` tem pouco espaço). As variáveis `PUB_CACHE`, `GRADLE_USER_HOME`, `ANDROID_HOME` e `ANDROID_SDK_ROOT` apontam para `D:\`. Consulte o `CLAUDE.md` para o mapa completo.

---

## 🧪 Testes e cobertura

O projeto exige **mínimo de 80% de cobertura de testes**.

```bash
# Rodar todos os testes
flutter test

# Rodar com cobertura
flutter test --coverage

# Verificar se atinge os 80%
dart run tool/check_coverage.dart
```

> Os testes ficam dentro de `lib/` (co-localizados com o código) e são reunidos em `test/aggregate/all_test.dart` para que `flutter test` funcione a partir da raiz. Ao adicionar/remover um teste, regenere o agregador:
>
> ```bash
> dart run tool/gen_test_suite.dart
> ```

Para visualizar a cobertura no VS Code, use a extensão **Coverage Gutters** (já recomendada no projeto).

---

## 🌿 Fluxo de versionamento (Git)

O projeto usa **Git Flow** + **Conventional Commits**. Detalhes completos em [`CONTRIBUTING.md`](CONTRIBUTING.md).

| Branch | Papel |
|---|---|
| `main` | Produção (estável) |
| `develop` | Integração |
| `feature/*` | Novas funcionalidades |
| `fix/*` | Correções |
| `release/*` · `hotfix/*` | Releases e correções urgentes |

**Exemplo de commit:** `feat(auth): adiciona validação no login`

---

## 🧩 Modelo de domínio

| Entidade | Descrição |
|---|---|
| **`Stop`** | Uma parada (endereço, encomendas, status, coordenadas…) |
| **`Box`** | Uma encomenda dentro de uma parada (código de rastreio) |
| **`Shift`** | Um turno de trabalho (conjunto de paradas + ordem otimizada) |
| **`PriorityGroup`** | Grupo de paradas com prioridade |
| **`IncorrectAddressReport`** | Registro de endereço reportado como incorreto |

---

## 📚 Glossário

| Termo | Significado |
|---|---|
| **Parada (Stop)** | Um endereço onde há entrega(s) a fazer |
| **Turno (Shift)** | Uma jornada de entregas, do início ao fim |
| **Otimização** | Calcular a melhor ordem de visita às paradas |
| **Vizinho mais próximo** | Algoritmo que, a cada passo, vai à parada mais perto |
| **Design System** | Conjunto de regras visuais (cores, fontes, componentes) |
| **Token** | Um valor padronizado do design (uma cor, um espaçamento) |
| **Riverpod** | Ferramenta que gerencia o "estado" (os dados vivos) do app |
| **Clean Architecture** | Forma de organizar o código em camadas independentes |

---

<div align="center">

**rotasimples** — Otimize suas entregas.

_Projeto pessoal de aprendizado · Flutter + Clean Architecture_

</div>
