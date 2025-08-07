// Utility for converting YAML to a Dart map.

import 'package:meta/meta.dart';
import 'package:yaml/yaml.dart';

/// Internal utility to convert a YAML string to a Dart map.
@internal
Map<String, dynamic> yamlToMap(String yamlString) {
  final document = loadYaml(yamlString);
  if (document is YamlMap) {
    return _convertYamlMapToDartMap(document);
  }
  throw const FormatException(
    'Expected a YAML map at the root of the document.',
  );
}

/// Recursively converts YamlMaps to Dart Maps.
Map<String, dynamic> _convertYamlMapToDartMap(YamlMap yamlMap) {
  final map = <String, dynamic>{};
  for (final entry in yamlMap.entries) {
    map[entry.key.toString()] = _convertYamlNodeToDart(entry.value);
  }
  return map;
}

/// Recursively converts YamlLists to Dart Lists.
List<dynamic> _convertYamlListToDartList(YamlList yamlList) {
  return yamlList.nodes
      .map((node) => _convertYamlNodeToDart(node.value))
      .toList();
}

/// Converts a single YAML node to a Dart value.
dynamic _convertYamlNodeToDart(dynamic node) {
  if (node is YamlMap) {
    return _convertYamlMapToDartMap(node);
  } else if (node is YamlList) {
    return _convertYamlListToDartList(node);
  }
  return node;
}
