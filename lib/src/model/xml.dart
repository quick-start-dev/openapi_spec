import 'package:meta/meta.dart';

/// Describes the XML representation of an object.
///
/// This class encapsulates metadata for serializing an object to XML,
/// as specified in an OpenAPI document.
@immutable
class Xml {
  /// Creates a [Xml] object.
  const Xml({
    this.name,
    this.namespace,
    this.prefix,
    this.attribute,
    this.wrapped,
  });

  /// Creates a [Xml] from a JSON object.
  factory Xml.fromJson(Map<String, dynamic> json) {
    return Xml(
      name: json['name'] as String?,
      namespace: json['namespace'] as String?,
      prefix: json['prefix'] as String?,
      attribute: json['attribute'] as bool?,
      wrapped: json['wrapped'] as bool?,
    );
  }

  /// The name of the XML element.
  final String? name;

  /// The URI of the namespace.
  final String? namespace;

  /// The XML prefix to be used for the name.
  final String? prefix;

  /// Indicates whether the property should be serialized as an XML attribute.
  final bool? attribute;

  /// Indicates whether the property should be wrapped in an XML element.
  final bool? wrapped;

  /// Converts this [Xml] object to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      if (name != null) 'name': name,
      if (namespace != null) 'namespace': namespace,
      if (prefix != null) 'prefix': prefix,
      if (attribute != null) 'attribute': attribute,
      if (wrapped != null) 'wrapped': wrapped,
    };
  }
}
