# flutter_riverpod_crash_course
https://www.youtube.com/watch?v=4zDYqKEQcDQ&list=PL4cUxeGkcC9i88WGZ9eIfQUWRgPstLFLp&index=1

A new Flutter project.
git clone with branch
```
git clone --branch starter-project --single-branch https://github.com/iamshaunjp/flutter-riverpod-tutorial.git
```
## Project Structure
git push with new branch
```
git checkout -b starter-project
git add .
git commit -m "add new branch"
git push -u origin starter-project
```
## Add dependencies
```

environment:
  sdk: ">=3.8.0 <4.0.0"

dependencies:
  
  flutter:
    sdk: flutter
  custom_lint: ^0.7.6
  flutter_dotenv: ^6.0.0
  flutter_riverpod: ^2.4.13
  google_fonts: ^6.3.1
  riverpod_annotation: ^2.6.1
  

dev_dependencies:
  flutter_test:
    sdk: flutter
  build_runner: ^2.4.13
  flutter_lints: ^6.0.0
  riverpod_lint: ^2.6.5
  riverpod_generator: ^2.0.0

```
//TODO: #4 Stateles Conummer (continue...)
## Generate class g with riverpod annotaion
maun run
```
flutter pub run build_runner

if run fail

flutter pub run build_runner build --delete-conflicting-outputs

```

auto run generate
```
dart run build_runner run watch
```

##
