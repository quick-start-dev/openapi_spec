import 'package:freezed_annotation/freezed_annotation.dart';

part 'license.freezed.dart';
part 'license.g.dart';

/// Represents the license information for the API.
@Freezed(copyWith: true, fromJson: true, toJson: true, equal: true)
abstract class License with _$License {
  /// Creates a [License] object.
  const factory License({
    /// The name of the license.
    required String name,

    /// A URL to the license information.
    @JsonKey(includeIfNull: false) String? url,
  }) = _License;

  /// Creates a [License] from a JSON object.
  factory License.fromJson(Map<String, dynamic> json) =>
      _$LicenseFromJson(json);
}
