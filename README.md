# Recipes Calculator

A simple Flutter application that displays a list of recipes. This project was created as a demonstration of a basic Flutter app.

## Features

- Displays a list of recipes with images and labels.
- Simple and clean user interface.

```markdown
# Recipes Calculator

A simple Flutter application that displays a list of recipes. This project was created as a demonstration of a basic Flutter app.

## Features

- Displays a list of recipes with images and labels.
- Simple and clean user interface.

## Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

- Flutter SDK: https://flutter.dev/docs/get-started/install

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/your_username/recipes_calculator.git
   ```
2. Install packages
   ```sh
   flutter pub get
   ```
3. Run the app (select a device/emulator first)
   ```sh
   flutter run
   ```

### Windows / WSL Notes

- On Windows with WSL or Git Bash, use the normal `flutter` command in a PowerShell/Terminal that has Flutter in PATH. If you use WSL and installed Flutter there, run `flutter` from the appropriate environment.

## Assets

This project includes image assets stored in the `assets/` directory. The `pubspec.yaml` declares the assets with:

```yaml
flutter:
  uses-material-design: true
  assets:
    - assets/
```

Tips when assets don't load:
- Make sure the path in code matches the path in `pubspec.yaml`. Example usage in code:

```dart
Image.asset('assets/15452035777_294cefced5_c.jpg')
```

- After editing `pubspec.yaml` run `flutter pub get` and perform a full restart (not only hot reload) to ensure assets are bundled.
- Asset paths are case-sensitive on some platforms (Linux, macOS) even if Windows appears to work.

## Where the code lives

- Entry point: `lib/main.dart` (starts `RecipesCalculatorApp`).
- Sample data: `lib/recipe.dart` defines `Recipe` and the sample list (`Recipe.samples`).
- Detail view: `lib/recipe_detail.dart` shows details for a selected recipe.

## Project Structure

See `PROJECT_STRUCTURE.md` for a concise tree and descriptions of the important files and folders.

## Contributing

Contributions are welcome. Fork the repo, create a branch, add tests or fixes, and open a pull request.

## Troubleshooting

- If images fail to appear, check `pubspec.yaml` for the `assets:` entry and run:

```sh
flutter pub get
```

Then restart your app. If problems persist, ensure the asset file names exist in the `assets/` folder and that the code references the correct relative path.

## License

Distributed under the MIT License. See `LICENSE` for more information.
```