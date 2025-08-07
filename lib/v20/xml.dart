import 'package:freezed_annotation/freezed_annotation.dart';

part 'xml.freezed.dart';
part 'xml.g.dart';

/// Describes the XML representation of an object.
///
/// This class encapsulates metadata for serializing an object to XML,
/// as specified in an OpenAPI document.
@Freezed(copyWith: true, fromJson: true, toJson: true, equal: true)
abstract class Xml with _$Xml {
  /// Creates a [Xml] object.
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory Xml({
    String? name,
    String? namespace,
    String? prefix,
    bool? attribute,
    bool? wrapped,
  }) = _Xml;

  /// Creates a [Xml] from a JSON object.
  factory Xml.fromJson(Map<String, dynamic> json) => _$XmlFromJson(json);
}
