## 1. Research: Flutter Gen Package

- Keywords:
    - gen flutter package code generation
    - flutter gen runner
    - flutter gen
    - flutter gen_l10n
    - flutter asset gen
    - gen flutter package free
    - gen flutter package code generation github
    - flutter gen_l10n command
    - flutter gen example
    - flutter gen github
    - flutter gen code generate
    - flutter gen_l10n example
    - flutter gen_l10n nok working
    - flutter gen -l10n github
    - gen flutter package free github
    - flutter asset gen example
    - flutter code generate online
- Video Title: Auto Manage Assets, Fonts, and Colors | Flutter Gen Package

## 2. Research: Competitors

**Flutter Videos/Articles**

- 6.7k:https://www.youtube.com/watch?v=H7YgrszBCLQ
- 29:https://www.youtube.com/watch?v=ke5vWz4gI9Q
- 8.3k:https://www.youtube.com/watch?v=D20Pg5iYX8c
- 10k:https://www.youtube.com/watch?v=77a3KTIRPaw
- 5.9k:https://www.youtube.com/watch?v=hgDbFLnLDNc
- 4.7k:https://www.youtube.com/watch?v=BmAQ4w0R9-U
- 15k:https://www.youtube.com/watch?v=BmAQ4w0R9-U
- 5.2k:https://www.youtube.com/watch?v=y2uQ7XTgne8
- 10k:https://www.youtube.com/watch?v=77a3KTIRPaw
- 15k:https://www.youtube.com/watch?v=mYDFOdl-aWM

**Android/Swift/React Videos**

- 6.7k:https://www.youtube.com/watch?v=H7YgrszBCLQ
- 14k:https://www.youtube.com/watch?v=fNpoGVjhdxY
- 4kk:https://www.youtube.com/watch?v=_yg1KHNv_tE
- 336:https://www.youtube.com/watch?v=jQcsCKFHr4s
- 5.9k:https://www.youtube.com/watch?v=hgDbFLnLDNc
- 48k:https://www.youtube.com/watch?v=y7Q5OMZjIsE
- 85k:https://www.youtube.com/watch?v=5tgcogEoIiQ

**Great Features**

- Centralized Location: flutter_gen creates a consolidated Assets class, serving as a one-stop shop
  for accessing all your assets. This eliminates the need for remembering and using lengthy
  string-based paths, enhancing code readability and maintainability.
- Type Safety: The generated Assets class enforces type safety, preventing errors due to typos or
  incorrect asset paths. This improves code reliability and reduces debugging time.
- Easy AssetImage Creation: You can conveniently create AssetImage objects using dot notation,
  making code more concise and reducing the likelihood of errors.
- Multiple Asset Providers: flutter_gen supports generating code for various asset providers, such
  as AssetBundle, NetworkImage, and FileImage, providing flexibility in how you handle your assets.

**Problems from Videos**

- Question:
  I need to generate a single file in the lib folder based on all classes of the application with a
  certain annotation. What would be the procedure for me to achieve this result?
- Answer:
  Check out my Conquering Code Generation with Dart series. Also the build
  docs https://github.com/dart-lang/build/tree/master/docs
- Question:
  Can ppl read the source code of these packages like in PHP?
- Answer:
  Yes, the package source code is available at the GitHub link on this
  page https://pub.dev/packages/source_gen
  Problems from Flutter Stackoverflow

- https://stackoverflow.com/questions/70568875/error-using-source-generator-from-a-source-generator-package
- https://stackoverflow.com/questions/71203190/flutter-build-not-generating-files
- https://stackoverflow.com/questions/62700386/flutter-moor-generator-problem-with-build-runner
- https://stackoverflow.com/questions/51845559/generate-sha-1-for-flutter-react-native-android-native-app
- https://stackoverflow.com/questions/61747124/flutter-auto-route-generator-error-dynamic-is-not-a-class
- https://stackoverflow.com/questions/59668548/why-doesnt-build-runner-generate-files-when-serializing-json-in-dart-flutter
- https://stackoverflow.com/questions/73472124/flutter-freezed-method-not-found
- https://stackoverflow.com/questions/63413361/error-while-running-built-value-generator

## 3. Video Structure

**Main Points / Purpose Of Lesson**

1. You will learn how to manage the paths to our Assets, Fonts, and Colors using flutter gen package
   based on our pubspec yaml file.
2. Manage Images
3. Manage Fonts

**The Structured Main Content**

1. Managing the paths to our Assets, Fonts, and Colors is error prone, therefore we want to use a
   code generator that automatically creates a path to our assets, fonts, and colors based on our
   pubspec yaml file.
2. First of all, add some images and fonts in the pubspec yaml file:
    ```dart\
    flutter:
    uses-material-design: true
    assets:
    - assets/images/
    fonts:
      - family: TheNautigal
      fonts:
      - asset: assets/fonts/TheNautigal-Bold.ttf
      - asset: assets/fonts/TheNautigal-Regular.ttf
      ```
3. Then run this command for mac, Linux, and windows:

    ```dart\
    dart pub global activate flutter_gen
    ```

4. Then add following dependencies in the dev_dependencies section:
    ```dart\
    dev_dependencies:
      build_runner:
      flutter_gen_runner:
    ```
5. Then run `flutter pub get`.
6. In the end run `dart run build_runner build`, and now the files asset.gen.dart and font.gen.dart
   have been generated in gen folder inside lib.
7. Let's use them like this in our main.dart file:
    ```dart
          const Text(
                    'Welcome Developers',
                    style: TextStyle(
                      fontFamily: FontFamily.theNautigal,
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.asset(Assets.images.nature1.keyName, scale: 10),
                  Assets.images.nature1.image(scale: 500),
    ```
8. We can also customize more things by using this package.
9. Here is the detailed documentation of this package: https://pub.dev/packages/flutter_gen
