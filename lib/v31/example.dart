import 'package:freezed_annotation/freezed_annotation.dart';

part 'example.freezed.dart';
part 'example.g.dart';

/// An object grouping an internal or external example value with
/// basic summary and description metadata.
///
/// The value field and externalValue field are mutually exclusive.
@freezed
abstract class Example with _$Example {
  /// Creates an [Example] object.
  @JsonSerializable(includeIfNull: false)
  const factory Example({
    /// A short description for the example.
    String? summary,

    /// A long description for the example.
    String? description,

    /// Embedded literal example. The `value` field and `externalValue` field
    /// are mutually exclusive.
    dynamic value,

    /// A URL that points to the literal example. The `value` field and
    /// `externalValue` field are mutually exclusive.
    String? externalValue,
  }) = _Example;

  /// Creates an [Example] from a JSON object.
  factory Example.fromJson(Map<String, dynamic> json) =>
      _$ExampleFromJson(json);
}
