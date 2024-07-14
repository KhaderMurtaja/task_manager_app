<a href="https://git.io/typing-svg"><img src="https://readme-typing-svg.demolab.com?font=Fira+Code&pause=1000&width=435&lines=Task+Manager+App" alt="Typing SVG" /></a>


## Description:
Task manager app using Flutter that allows users to manage their tasks efficiently.

## How to use:

#### Step 1
Download or clone this repo by using the link below:

```bash
https://github.com/KhaderMurtaja/task_manager_app.git
```

#### Step 2
Go to project root and execute the following command in console to get the required dependencies:
```bash
flutter pub get
```

### Step 3 (optional for iOS)
```bash
cd ios
```

```bash
pod install --repo-update
```
#### Step 4
Generate files:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

#### Step 5:
Run app
```bash
flutter run
```

## 🚀 Folder Structure
#### I have followd the clean architecture pattern in this project. Here is the lib folder structure.

```bash
| lib/
  |- core/
    |- failure/
  |- presentation/
    |- feature/
    |- task_manager_app/
  |- router/
  |- service_locator/
    |- service_locator.dart
  |- servicee
    |- https_service/
    |- shared_preferences/
  |- main.dart
| test/
  |- shared_pref_test.dart
```
</pre>

## 🛠️ Dependencies
```yaml
- auto_route: '7.7.1' # Flutter routing library

- bloc: ^8.1.2 # Flutter state management library

- connectivity_plus: ^6.0.3 # Flutter plugin for discovering the state of the network (WiFi & mobile/cellular) connection on Android and iOS.

- dartz: ^0.10.1 # Functional programming in Dart

- dio: ^5.4.2+1 # A powerful Http client for Dart, which supports Interceptors, Global configuration, FormData, Request Cancellation, File downloading, Timeout etc.

- equatable: ^2.0.5 # Simplify Equality Comparisons

- flutter_bloc: ^8.1.3 # Flutter Widgets that make it easy to implement the BLoC (Business Logic Component) design pattern

- freezed_annotation: ^2.4.1 # Code generation for immutable classes

- get_it: ^7.6.7 # Simple direct Service Locator that allows to decouple the interface from a concrete implementation and to access the concrete implementation from everywhere in your App

- json_annotation: ^4.8.1 # JSON Serialization

- shared_preferences: ^2.2.2 # Flutter plugin for reading and writing simple key-value pairs. Wraps NSUserDefaults on iOS and SharedPreferences on Android.
```

## 🛠️ Dev_Dependencies
```yaml
- auto_route_generator: '7.2.0' # Flutter routing library generator

- build_runner: ^2.4.9 # Build custom models

- freezed: ^2.4.7 # Code generation for immutable classes

- json_serializable: ^6.7.1 # Generate code for converting to and from JSON by annotating Dart classes.

- mockito: ^5.4.4 # Mock library for Dart inspired by Mockito for testing and mocking https requests

- very_good_analysis: ^5.1.0 # A set of best practices for writing Dart and Flutter code
```
