
# Ruki Logger

Ruki Logger is a simple and efficient logging package for Flutter applications. It helps developers to log messages, errors, and other information in a structured and readable format.

## Features

- Easy to use API for logging messages.
- Supports different log levels (info, warning, error, etc.).
- Customizable log format.
- Option to log to console or file.
- Lightweight and fast.

## Getting started

### Prerequisites

- Flutter SDK installed on your machine.
- Basic knowledge of Dart and Flutter.

### Installation

Add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
    ruki_logger: latest_version
```

Then, run `flutter pub get` to install the package.

## Usage

Here are some examples to get you started with Ruki Logger:

```dart
import 'package:ruki_logger/ruki_logger.dart';

void main() {
    final logger = RukiLogger();

    logger.info('This is an info message');
    logger.warning('This is a warning message');
    logger.error('This is an error message');
}
```