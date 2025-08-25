import 'package:freezed_annotation/freezed_annotation.dart';

part 'license.freezed.dart';
part 'license.g.dart';

/// License information for the exposed API.
@Freezed(copyWith: true, fromJson: true, toJson: true, equal: true)
abstract class License with _$License {
  /// Creates a [License] object.
  @JsonSerializable(includeIfNull: false)
  const factory License({
    /// The name of the license.
    required String name,

    /// An SPDX license expression for the API.
    /// The identifier field is mutually exclusive of the url field.
    String? identifier,

    /// A URL to the license information.
    String? url,
  }) = _License;

  /// Creates a [License] from a JSON object.
  factory License.fromJson(Map<String, dynamic> json) =>
      _$LicenseFromJson(json);
}
