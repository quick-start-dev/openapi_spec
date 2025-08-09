import 'package:freezed_annotation/freezed_annotation.dart';

part 'discriminator.freezed.dart';
part 'discriminator.g.dart';

/// The **Discriminator** Object gives a hint about the expected schema of the
/// document when request bodies or response payloads may be one of a number of
/// different schemas.
@Freezed(copyWith: true, fromJson: true, toJson: true, equal: true)
abstract class Discriminator with _$Discriminator {
  /// Creates a [Discriminator] object.
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory Discriminator({
    /// The name of the property that is used to differentiate between schemas.
    required String propertyName,

    /// A map that associates a property value with a schema name.
    Map<String, String>? mapping,
  }) = _Discriminator;

  /// Creates a [Discriminator] from a JSON object.
  factory Discriminator.fromJson(Map<String, dynamic> json) =>
      _$DiscriminatorFromJson(json);
}
