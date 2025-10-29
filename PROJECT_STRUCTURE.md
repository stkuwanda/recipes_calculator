# Project structure

This file describes the main folders and important files in the repository so contributors can quickly find what they need.

The project follows the standard Flutter layout. Below is a scaffolded directory tree (trimmed to show the most relevant files):

```
recipes_calculator/
├── android/                 # Android Gradle project files
│   ├── app/
│   └── build.gradle.kts
├── ios/                     # iOS Xcode project files
│   └── Runner/
├── macos/                   # macOS desktop project files
├── linux/                   # Linux desktop project files
├── windows/                 # Windows desktop project files
├── web/                     # Web target files (index.html, manifest)
├── assets/                  # Static assets (images) used by the app
│   ├── 15452035777_294cefced5_c.jpg
│   ├── 15992102771_b92f4cc00a_b.jpg
│   ├── 2126711929_ef763de2b3_w.jpg
│   ├── 27729023535_a57606c1be.jpg
│   ├── 3187380632_5056654a19_b.jpg
│   ├── 8533381643_a31a99e8a6_c.jpg
│   └── attribution.md
├── lib/                     # Dart source files
│   ├── main.dart            # App entry point and root widget
│   ├── recipe.dart          # Recipe model and sample data (Recipe.samples)
│   └── recipe_detail.dart   # Detail screen for a selected recipe
├── test/                    # Tests
│   └── widget_test.dart
├── pubspec.yaml             # Package manifest (dependencies, assets declaration)
├── README.md                # Project overview and setup
└── PROJECT_STRUCTURE.md     # This file
```

Notes and tips:

- The `assets/` directory is declared in `pubspec.yaml` with `assets: - assets/`, which includes all files under that folder. If you add or rename assets, run `flutter pub get` and perform a full restart of the app so assets are bundled.
- The app references images using relative paths, e.g. `Image.asset('assets/15452035777_294cefced5_c.jpg')`. Ensure file names match exactly (case matters on some platforms).
- Platform-specific folders (android/, ios/, macos/, linux/, windows/) are present for building to those targets. Most development work will be in `lib/`.

If you'd like, I can generate a more detailed tree (including generated build directories) or add a short developer checklist for running and building on each supported platform.
# Project structure

This file describes the main folders and important files in the repository so contributors can quickly find what they need.

- android/ - Android app project files and Gradle configuration.
- ios/ - iOS/Swift project files for building on Apple platforms.
- macos/ - macOS project files (if building desktop macOS target).
- linux/ - Linux desktop project files.
- windows/ - Windows desktop project files.
- web/ - Web build assets and index.html for web target.
- assets/ - Static assets (images) used by the app. Declared in `pubspec.yaml`.
- lib/ - Main Dart source code:
  - `main.dart` - App entry point and root widget.
  - `recipe.dart` - `Recipe` model and sample data (`Recipe.samples`).
  - `recipe_detail.dart` - Detail screen for a selected recipe.
- test/ - Widget/unit tests. (`widget_test.dart` exists as a starter test.)
- pubspec.yaml - Dart/Flutter package manifest. Lists dependencies and assets. Important to run `flutter pub get` after changes.
- README.md - Project overview and setup instructions.
- PROJECT_STRUCTURE.md - (this file) quick reference to repository layout.

Notes:
- Assets are included via `flutter.assets` in `pubspec.yaml`. If you add new images, add them under `assets/` and run `flutter pub get`.
- The app is small and intended as a learning/demo project. The main logic and UI are in `lib/`.

If you'd like, I can generate a more detailed tree (with file counts) or add a simple developer checklist for building on each platform.
# Project Structure

This Flutter project follows a standard directory structure. Here's an overview of the key directories and files:

- **`lib/`**: This is the main folder containing all the Dart source code for the application.
  - **`main.dart`**: The entry point of the application.
  - **`recipe.dart`**: Defines the `Recipe` data model.
- **`assets/`**: Contains image assets used in the application.
- **`pubspec.yaml`**: The project's configuration file, which includes dependencies, assets, and other metadata.
- **`README.md`**: This file, providing a general overview of the project.
- **`GEMINI.md`**: Contains information for the Gemini AI assistant.
- **`android/`**, **`ios/`**, **`linux/`**, **`macos/`**, **`web/`**, **`windows/`**: These directories contain the platform-specific code for each of the supported platforms.
