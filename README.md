# starter

A small Flutter starter app with a bottom-tab layout, theme switching, and a
bookmark grid. State is managed with [`flutter_zustand`](https://pub.dev/packages/flutter_zustand).

## Features

- **Bottom navigation** with three tabs: 홈 (Home), 즐겨찾기 (Bookmark), 설정 (Settings).
- **Home** — a search bar backed by `SearchAnchor`/`SearchBar`.
- **Bookmark** — a `GridView` of place tiles rendered from bundled assets.
- **Settings** — a typed settings list, including a theme picker
  (light / dark / system) wired to a persisted-in-memory `ThemeStore`.

## Project structure

```
lib/
  main.dart              # MaterialApp + light/dark themes, StoreScope root
  layout.dart            # Scaffold, AppBar, BottomNavigationBar
  components/
    search_bar.dart      # SearchAnchor-based search field
  pages/
    home/main.dart       # Home tab
    bookmark/home.dart    # Bookmark grid
    settings/settings.dart # Settings list
    settings/theme.dart   # Theme picker
  stores/
    theme.dart           # ThemeMode store
    bottom_tab.dart      # Selected-tab store
```

## Getting started

```bash
flutter pub get
flutter run
flutter test      # widget smoke tests
flutter analyze   # static analysis (flutter_lints)
```

## Known follow-ups

These are intentionally deferred and tracked for later work:

- **State persistence** — theme and selected tab reset on restart; persist them
  with `shared_preferences`.
- **Internationalization** — UI strings are hardcoded in Korean and
  `assets/locales/ko.json` is unused; wire up `flutter_localizations`.
- **Placeholder features** — the notification action, search results, and the
  account/notifications/language settings rows are stubs.
