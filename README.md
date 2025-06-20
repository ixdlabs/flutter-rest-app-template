# 🚀 Flutter REST App Template for IXDians

Use this template as a kickstarter for building Flutter applications with a scalable structure. Please review and complete all **TODOs** before starting development.

You can use [`change_app_package_name`](https://pub.dev/packages/change_app_package_name) to update your app's bundle identifiers.

---

## 🧭 Getting Started

### 🔀 Flavors (Optional)

Use [`flutter_flavorizr`](https://pub.dev/packages/flutter_flavorizr) to create and manage app flavors.

**To build a production APK using flavorizr:**

```bash
flutter build apk --flavor prod -t lib/main.dart
```

---

## 🌱 State Management with Riverpod

Use [Flutter Riverpod Snippets](https://marketplace.visualstudio.com/items?itemName=robert-brunhage.flutter-riverpod-snippets) by Robert Brunhage for VS Code to boost productivity.

Leverage **code generation** for providers.

📚 [Riverpod Code Generation Docs](https://riverpod.dev/docs/concepts/about_code_generation)

---

## 🎣 Hooks

Use [`flutter_hooks`](https://pub.dev/packages/flutter_hooks) with Riverpod to reduce boilerplate and avoid using `StatefulWidget` and `setState`.

---

## 🧩 Modeling

Use [`json_serializable`](https://pub.dev/packages/json_serializable) to generate serialization code for model classes.

---

## 🖼️ Asset Management

Use [`flutter_gen`](https://pub.dev/packages/flutter_gen) to auto-generate asset references.

After adding assets, run:

```bash
fluttergen -b pubspec.yaml
```

---

## 🛠️ Recommended VS Code Settings

Open **User Settings (JSON)** and paste the following configuration:

```json
"[dart]": {
  "editor.formatOnSave": true,
  "editor.formatOnType": true,
  "editor.rulers": [80],
  "editor.selectionHighlight": false,
  "editor.tabCompletion": "onlySnippets",
  "editor.wordBasedSuggestions": "off",
  "editor.inlayHints.enabled": "offUnlessPressed",
  "editor.defaultFormatter": "Dart-Code.dart-code",
  "editor.codeActionsOnSave": {
    "source.fixAll": "explicit",
    "source.fixAll.eslint": "explicit",
    "source.organizeImports": "explicit"
  }
},
"editor.formatOnSave": true,
"editor.codeActionsOnSave": {
  "source.fixAll.eslint": "explicit"
}
```

---

## ✅ Linter

Always follow Dart and Flutter linter suggestions to keep code clean, consistent, and readable.

---

## 📁 Folder Structure

```
lib/
├── constants/        # All constants, enums, and shared values
├── gen/              # Auto-generated files (e.g. assets via flutter_gen)
├── models/           # Model classes, separated by feature
├── providers/        # Riverpod providers and notifiers, by feature
├── screens/          # UI screens, with 'Screen' suffix and feature folders
│   └── feature_name/
│       ├── feature_screen.dart
│       └── widgets/  # Feature-specific widgets
├── services/         # API and business logic services, by feature
├── utils/            # Shared utility functions
└── widgets/          # Global reusable widgets (e.g. shared buttons)
```
---

## ⚙️ Utilities

Move all reusable utility functions from the UI layer to the utils folder to improve reusability and maintainability across the project. Consider organizing them using extensions where appropriate (e.g., utils/theme/extension.dart).

---

## 🤖 LLM Usage

If you're using an LLM (AI assistant) for code generation, **clearly specify** that you're using **Riverpod** and **Flutter Hooks** to ensure the generated code aligns with this template's structure and philosophy.

---

Happy coding! 💻🚀
