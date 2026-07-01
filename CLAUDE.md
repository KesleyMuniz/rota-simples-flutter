# CLAUDE.md — rotasimples (bootstrap da arquitetura base Flutter)
> **Para o Claude Code:** este arquivo é a fonte da verdade para **montar a arquitetura base** do app `rotasimples`. Ele consolida as decisões já travadas nos documentos de fase do projeto (Fase 1 — Discovery, Fase 2 — Fluxo/Wireframes, Fase 3 — Design System e Telas) e no documento de **Regras do projeto** (§4 decisões travadas, §4.1 sincronização/offline, §4.2 modelo de domínio).
>
> Os documentos de fase continuam sendo a fonte da verdade detalhada. Em caso de conflito entre este resumo e os documentos de fase, **pare e sinalize o conflito antes de prosseguir** — nunca reverta uma decisão travada sem razão nova e explícita.
>
> **Convenção:** documentação e conversa em **português**; tudo que vira código (classes, campos, providers, arquivos) em **inglês**.
---
## 0. REGRA OBRIGATÓRIA — onde instalar (o disco `C:\` está CHEIO)
**O disco `C:\` tem apenas ~200 MB livres. NADA pesado pode ser escrito em `C:\`.** Antes de rodar qualquer comando de instalação, `flutter pub get`, build Android/iOS ou criar o projeto, o Claude Code **deve garantir** que SDKs, caches e o projeto estão fora do `C:\`. Se algum caminho ainda apontar para `C:\`, **pare e corrija primeiro**.

### 0.1 Mapa de onde cada coisa vai morar

| O quê | Variável de ambiente | Caminho-alvo (em `D:\`) |
|---|---|---|
| SDK do Flutter | (PATH) | `D:\flutter` |
| Cache de pacotes Dart/Flutter | `PUB_CACHE` | `D:\Desenvolvimento\pub-cache` |
| Cache de build do Gradle (Android) | `GRADLE_USER_HOME` | `D:\Desenvolvimento\gradle` |
| Android SDK | `ANDROID_HOME` / `ANDROID_SDK_ROOT` | `D:\Android\Sdk` |
| **Projeto** | — | `D:\Area de trabalho\APP\rota-simples-flutter` |

### 0.2 Verificação antes de buildar (obrigatório em terminal novo)
```powershell
$env:PUB_CACHE = "D:\Desenvolvimento\pub-cache"
$env:GRADLE_USER_HOME = "D:\Desenvolvimento\gradle"
$env:ANDROID_HOME = "D:\Android\Sdk"
$env:ANDROID_SDK_ROOT = "D:\Android\Sdk"
```

---
## 1. Visão geral do projeto
`rotasimples` é um app mobile (iOS + Android) que **otimiza a ordem de visita das paradas de um entregador**. Ele decide a sequência; a navegação turn-by-turn é **delegada** ao Google Maps/Waze. É um **projeto pessoal de aprendizado** — modelagem de dados, persistência, geolocalização, algoritmos de otimização e gerenciamento de estado. Mudanças grandes de escopo exigem listar as dependências técnicas **antes** de decidir.

- **Nome / marca:** rotasimples. **Tagline:** "OTIMIZE SUAS ENTREGAS".
- **Acento:** teal `#00C2A8`. **Tema escuro** como padrão.
- **Tom de voz (UI):** direto e funcional, informal-profissional (usa "você"), verbos no imperativo para CTAs, **sem emoji na interface**, números no padrão brasileiro (`31,2 km`; `1.284 entregas`; `13h02`).

---
## 2. Stack e convenções
- **Framework:** Flutter (Dart), mobile-first (iOS + Android). Plataformas no `flutter create`: `--platforms=android,ios`.
- **Gerenciamento de estado:** **Riverpod** com codegen (`@riverpod`). (Escolha deliberada sobre BLoC.)
- **Fontes:** Sora (display/headings) + Manrope (body/UI), via `google_fonts`.
- **Mapa/satélite:** **Mapbox** (camada de satélite, dentro da cota gratuita).
- **Nomenclatura:** **código em inglês**, docs/conversa em português.
- **Org sugerida do pacote:** `com.rotasimples`. Nome do projeto Dart: `rotasimples`.

---
## 3. Estrutura de pastas
Organização **por features** + `core/` com o design system e utilitários compartilhados.

```
lib/
├── core/
│   ├── design_system/
│   │   ├── tokens/        # RSColors, RSType, RSSpacing, RSSizes, RSRadius, RSShadows
│   │   ├── theme/         # ThemeData (rs_theme.dart)
│   │   └── widgets/       # Button, Input, Card, Badge, BottomSheet, NavBar
│   ├── router/            # go_router + rotas nomeadas
│   ├── network/           # cliente HTTP + checagem de conectividade
│   ├── storage/           # persistência local / cache
│   └── utils/             # helpers compartilhados (ex.: Coordinates, formatação BR)
│
├── features/
│   ├── auth/              # Splash, Login, Cadastro, Recuperar Senha, Trocar Senha
│   ├── route_planning/    # Home, Lista de Paradas, Add/Editar Parada, Importar, Revisão, Rota Otimizada
│   ├── delivery_progress/ # Progresso da Entrega, Turno Concluído
│   ├── history/           # Histórico
│   ├── subscription/      # free × PRO, checkout
│   └── profile/           # Perfil, Editar Perfil, Excluir Conta
│
└── main.dart
```

Estrutura interna padrão de cada feature:
```
<feature>/
├── domain/
│   ├── entities/
│   ├── services/
│   └── repositories/      # contratos abstratos
├── data/
├── application/           # providers Riverpod
└── presentation/          # telas e widgets
```

---
## 4. Dependências
### 4.1 Travadas
- `flutter_riverpod` + `riverpod_annotation` + (dev) `riverpod_generator`, `build_runner`, `custom_lint`, `riverpod_lint`
- `google_fonts`
- `mapbox_maps_flutter`

### 4.2 Recomendadas para o BASE (confirmar)
- `go_router`
- `flutter_svg`
- `freezed` + `json_serializable` (dev)

### 4.3 Planejadas para depois
- `geolocator`, `url_launcher`, persistência local (drift/hive/sqflite), cliente HTTP (dio/http), `connectivity_plus`

---
## 5. Gerenciamento de estado (Riverpod)
- Codegen com `@riverpod`. Providers **`autoDispose` por padrão**.
- `@Riverpod(keepAlive: true)` reservado para: sessão de auth; turno ativo; preferências de perfil; histórico.

---
## 6. Design system (tokens)
### 6.1 Cores — tema escuro (`RSColors`)
| Token | Valor |
|---|---|
| bgApp | `#0E1014` |
| bgCard | `#13161D` |
| bgElevated | `#1C2029` |
| accent | `#00C2A8` |
| accentLight | `#2FD3BC` |
| success | `#2BD66E` |
| warning | `#F5A623` |
| error | `#FF5A5F` |
| blue | `#5D8BF0` |
| textPrimary | `#F4F6FB` |
| textSecondary | `#8B94A6` |
| textTertiary | `#5D667A` |

### 6.2 Tipografia (`RSType`)
- **Display/Headings:** Sora (weights 500–800)
- **Body/UI:** Manrope (weights 400–800)
- **Escala (mobile):** título 26–27px; número hero 40px; section label 11px uppercase; CTA 17px; body 14–15px; nav label 10.5px.

### 6.3 Espaçamento, sizing, radii, sombras
- **Padding de tela:** 18px lateral, 56px topo; bottom safe 34–40px. Gaps: 9–10px entre cards, 18–22px entre seções.
- **Alturas:** CTA 54–58px; input 50–52px; nav ~84px.
- **Radii:** input 14px; card/botão 14–18px; pill/badge 99px; bottom sheet 26px topo; mapa 18–20px.
- **Sombras:** CTAs coloridos com sombra da cor; card elevado `0 12px 30px rgba(0,0,0,0.35)`.

### 6.4 Iconografia
**Exclusivamente SVG inline** — sem icon font, sem emoji, sem PNG.

---
## 7. Modelo de domínio
### 7.1 `Stop`
id, address, streetNumber?, neighborhood?, city?, zipCode?, coordinates, orderNumber?, note?, status (pending/delivered), geocodingConfidence (high/low), hasGroupingConflict, incorrectAddressReports[], boxes[] (mínimo 1), priorityGroupId?

### 7.2 `Box`
id, trackingNumber, recipientName?

### 7.3 `Shift`
id, userId, status (planning/optimized/inProgress/completed), stops[], optimizedOrder? (IDs na ordem calculada), priorityGroups?, startedAt?, completedAt?

### 7.4 `PriorityGroup`
id, stopIds[], order

### 7.5 `IncorrectAddressReport`
note?, timestamp, reportedAddress, reportedNeighborhood?, reportedCity?, reportedZipCode?, reportedCoordinates

---
## 8. Decisões de arquitetura travadas
- Algoritmo: **vizinho mais próximo**. 2-opt no backlog.
- Distância: **real de rua** via API. **Linha reta NUNCA.**
- Chamadas à API: **sempre em lote** (matriz completa).
- Falha de API: usar **cache da última matriz real**; bloqueio seletivo sem cache.
- Navegação turn-by-turn: **sempre delegada** ao Google Maps/Waze.
- Imagem de localização: satélite Mapbox (gratuito) + link Street View.
- Grupos prioritários: **prioridade rígida**; conflito → prevalece o primeiro grupo confirmado.
- Auth: **dentro do MVP**. Email + senha. App exige internet (offline completo fora do MVP).
- Assinatura: **dentro do MVP**. Modelo free × PRO.
- Navegação UI: **bottom nav 4 abas** (Início, Rota atual, Histórico, Perfil).
- Histórico: oficial no MVP.

---
## 9. Sincronização local↔servidor
| Área | Comportamento sem internet |
|---|---|
| Login, Cadastro, Recuperar/Trocar Senha | Bloqueado |
| Perfil | Bloqueado |
| Histórico | Leitura via cache local |
| Rota atual — leitura | Cache local |
| Rota atual — editar/marcar entregue/concluir turno | Sempre permitido (sync automático ao reconectar) |
| Rota atual — **adicionar parada** | Bloqueado |
| Cálculo de distância | API → cache → congelado. Linha reta nunca. |

---
## 10. Inventário de telas
**Auth:** Splash, Login, Cadastro, Recuperar Senha, Trocar Senha.
**Rota:** Home, Lista de Paradas, Adicionar/Editar Parada, Importar Planilha, Revisão de Endereços, Rota Otimizada, Progresso da Entrega, Turno Concluído.
**Conta:** Histórico, Perfil, Editar Perfil, Excluir Conta.

---
## 11. Escopo do BASE (fazer agora)
1. Projeto Flutter criado com `--platforms=android,ios` ✅
2. Estrutura de pastas (§3)
3. Design system: tokens + ThemeData + widgets core
4. Entidades de domínio (§7) com freezed
5. Riverpod codegen configurado
6. Esqueleto de roteamento (go_router) + shell bottom nav + telas stub
7. `core/network` e `core/storage` como contratos/stubs

### NÃO implementar ainda
- Telas de assinatura/checkout
- Tema claro
- Persistência/agregação do histórico
- Telas de erro sem design (localização negada, falha de mapa)
- Responsividade tablet
