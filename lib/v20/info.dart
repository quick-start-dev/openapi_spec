import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:openapi_spec_plus/v20/contact.dart';
import 'package:openapi_spec_plus/v20/license.dart';

part 'info.freezed.dart';
part 'info.g.dart';

/// Represents the metadata about the API.
@Freezed(copyWith: true, fromJson: true, toJson: true, toStringOverride: true)
abstract class Info with _$Info {
  /// Creates an instance of [Info].
  const factory Info({
    /// The title of the API.
    required String title,

    /// The version of the API.
    required String version,

    /// A short description of the API.
    @JsonKey(includeIfNull: false) String? description,

    /// A URL to the API's terms of service.
    @JsonKey(includeIfNull: false) String? termsOfService,

    /// The contact information for the API.
    @JsonKey(includeIfNull: false) Contact? contact,

    /// The license information for the API.
    @JsonKey(includeIfNull: false) License? license,

    /// A short summary of the API.
    @JsonKey(includeIfNull: false) String? summary,

    /// Vendor extensions (keys like `x-*`).
    @JsonKey(includeIfNull: false, includeFromJson: false, includeToJson: false)
    Map<String, dynamic>? extensions,
  }) = _Info;

  /// Converts this [Info] object to a JSON map.

  factory Info.fromJson(Map<String, dynamic> json) {
    final extensions = Map.fromEntries(
      json.entries.where((e) => e.key.startsWith('x-')),
    );
    return _$InfoFromJson(json).copyWith(extensions: extensions);
  }

  /// Converts this [Info] object to a JSON map.
  @override
  Map<String, dynamic> toJson() {
    final map = _$InfoToJson(this as _Info);
    if (extensions != null) {
      map.addAll(extensions!);
    }
    return map;
  }
}
