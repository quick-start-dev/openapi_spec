

# openapi_spec_plus

[![pub package](https://img.shields.io/pub/v/openapi_spec_plus.svg)](https://pub.dev/packages/openapi_spec_plus)
[![build](https://github.com/quick-start.dev/openapi_spec_plus/actions/workflows/build.yml/badge.svg)](https://github.com/quick-start.dev/openapi_spec_plus/actions/workflows/build.yml)
[![license](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

A Dart library for parsing and working with OpenAPI Specifications (v2.0, v3.0, and v3.1).

## Features

- Supports OpenAPI Specification versions 2.0, 3.0, and 3.1  

## Getting started

To use this package, you need Dart SDK installed. Then add the package to your `pubspec.yaml`:

```yaml
dependencies:
  openapi_spec_plus: ^1.0.0
````

Run the following command to install the package:

```bash
dart pub get
```

## Usage

Here are some simple examples for common use cases. For more examples, see the `/example` folder.

### Parse OpenAPI 3.1 JSON Spec

```dart
import 'dart:convert';
import 'dart:io';

import 'package:openapi_spec_plus/v31.dart' as v31;

void main() {
  final file = File('test/fixtures/petstore_v31.json');
  final content = file.readAsStringSync();

  final spec = v31.OpenAPI.fromJson(jsonDecode(content));
  print('API title: ${spec.info.title}');
}
```

### Parse OpenAPI 3.1 YAML Spec

```dart
import 'dart:io';

import 'package:openapi_spec_plus/v31.dart' as v31;
import 'package:openapi_spec_plus/src/parser/yaml_utils.dart';

void main() {
  final file = File('test/fixtures/openapi-v31.yaml');
  final content = file.readAsStringSync();

  final orgJson = yamlToMap(content);
  final spec = v31.OpenAPI.fromJson(orgJson);
  print('API title: ${spec.info.title}');
}
```

### Parse OpenAPI 2.0 JSON Spec

```dart
import 'dart:convert';
import 'dart:io';

import 'package:openapi_spec_plus/v20.dart' as v20;

void main() {
  final file = File('test/fixtures/petstore_v20.json');
  final content = file.readAsStringSync();

  final spec = v20.OpenAPI.fromJson(jsonDecode(content));
  print('API title: ${spec.info.title}');
}
```

### Parse OpenAPI 3.0 YAML Spec

```dart
import 'dart:io';

import 'package:openapi_spec_plus/v30.dart' as v30;
import 'package:openapi_spec_plus/src/parser/yaml_utils.dart';

void main() {
  final file = File('test/fixtures/openapi-v30.yaml');
  final content = file.readAsStringSync();

  final orgJson = yamlToMap(content);
  final spec = v30.OpenAPI.fromJson(orgJson);
  print('API title: ${spec.info.title}');
}
```

---

### Creating OpenAPI Spec Instances Manually

```dart
import 'package:openapi_spec_plus/v20.dart' as v20;
import 'package:openapi_spec_plus/v30.dart' as v30;
import 'package:openapi_spec_plus/v31.dart' as v31;

void main() {
  const specV20 = v20.OpenAPI(
    info: v20.Info(title: 'Test API', version: '1.0.0'),
  );

  const specV30 = v30.OpenAPI(
    openapi: '3.0.4',
    info: v30.Info(title: 'Test API', version: '1.0.0'),
  );

  const specV31 = v31.OpenAPI(
    openapi: '3.1.0',
    info: v31.Info(title: 'Test API', version: '1.0.0'),
  );

  print(specV20.toJson());
  print(specV30.toJson());
  print(specV31.toJson());
}
```

---
---

## Contributing

Contributions are welcome! Feel free to open issues or submit pull requests on GitHub.

---

## License

MIT License. See the LICENSE file for details.



---
