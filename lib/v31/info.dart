import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:openapi_spec/v31/contact.dart';
import 'package:openapi_spec/v31/license.dart';

part 'info.freezed.dart';
part 'info.g.dart';

/// Represents the metadata about the API.
@Freezed(copyWith: true, fromJson: true, toJson: false, toStringOverride: true)
abstract class Info with _$Info {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  /// Creates an instance of [Info].
  const factory Info({
    /// The title of the API.
    required String title,

    /// The version of the API.
    required String version,

    /// A short description of the API.
    String? description,

    /// A URL to the API's terms of service.
    String? termsOfService,

    /// The contact information for the API.
    Contact? contact,

    /// The license information for the API.
    License? license,

    /// A short summary of the API.
    String? summary,

    /// Vendor extensions (keys like `x-*`).
    @JsonKey(includeIfNull: false, includeFromJson: false, includeToJson: false)
    Map<String, dynamic>? extensions,
  }) = _Info;
  const Info._();

  /// Converts this [Info] object to a JSON map.

  factory Info.fromJson(Map<String, dynamic> json) {
    final extensions = Map.fromEntries(
      json.entries.where((e) => e.key.startsWith('x-')),
    );
    return _$InfoFromJson(json).copyWith(extensions: extensions);
  }

  /// Converts this [Info] object to a JSON map.

  Map<String, dynamic> toJson() {
    final map = _$InfoToJson(this as _Info);
    if (extensions != null) {
      map.addAll(extensions!);
    }
    return map;
  }
}
