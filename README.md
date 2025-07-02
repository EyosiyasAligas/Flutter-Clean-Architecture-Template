# Flutter Clean Architecture Template

A Flutter starter project demonstrating a clean‑architecture setup with:

- **Authentication** (email/password + social providers)
- **Theme Mode** (light & dark)
- **Localization** (i18n)

It’s designed to help you kick off production‑ready apps with best practices for separation of concerns, testability, and scalability.

---

## 🚀 Getting Started

### Installation

1. **Clone** this repo  
   ```bash
   git clone https://github.com/EyosiyasAligas/Flutter-Clean-Architecture-Template.git
   cd Flutter-Clean-Architecture-Template


2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Run on an emulator or device**

   ```bash
   flutter run
   ```

---

## 🏗️ Architecture Overview

This template follows the principles of Uncle Bob’s Clean Architecture:

```
 ┌────────────────────┐
 │ Presentation Layer │  ← UI (Widgets, Pages, Blocs)
 ├────────────────────┤
 │ Domain Layer       │  ← Business logic (UseCases, Entities)
 ├────────────────────┤
 │ Data Layer         │  ← Repositories & Data sources
 └────────────────────┘
```

* **Presentation**:

  * `/screens`
  * `/widgets`
  * Uses `Bloc` for state management

* **Domain**:

  * `/domain`
  * Contains `entities`, `repositories` (abstract), and `usecases`

* **Data**:

  * `/data`
  * Implements repositories, connects to remote / local sources

---

## ✨ Key Features

* **Authentication**

  * Email/password
  * Auth flow widgets + bloc

* **Theme Mode**

  * Light & Dark themes out of the box
  * Persisted with local storage

* **Localization**

  * English & Amharc sample
  * Uses `flutter_localizations` & JSON files
  * Easy to add more languages

---

## 📂 Folder Structure

```
lib/
├── src/
│    ├── data/
│    │   ├── models/
│    │   ├── repositories/
│    │   └── data_sources/      # e.g., Remote, local DB
│    ├── domain/
│    │   ├── entities/
│    │   ├── repositories/
│    │   └── usecases/
│    ├── ui/
│    │   ├── blocs/
│    │   ├── screens/
│    │   ├── widgets/
│    ├── core/             # error handling, network info, constants
│    ├── shared/
└── main.dart
```

---

## ⚙️ Configuration

 **Localization**

   * Edit `assets/lang/en.json` & `assets/lang/am.json`
   * Add new JSON and register in `AppLocalizationsDelegate`

---

## 🧪 Testing

* **Unit tests** for use‑cases and blocs live in `/test`
* To run all tests:

  ```bash
  flutter test
  ```
