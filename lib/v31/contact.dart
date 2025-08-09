import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact.freezed.dart';
part 'contact.g.dart';

/// Represents the contact information for the API.
@Freezed(copyWith: true, fromJson: true, toJson: true, equal: true)
abstract class Contact with _$Contact {
  /// Creates a [Contact] object.
  @JsonSerializable(includeIfNull: false)
  const factory Contact({
    /// The name of the contact person or organization.
    String? name,

    /// The URL pointing to the contact information.
    String? url,

    /// The email address of the contact person or organization.
    String? email,
  }) = _Contact;

  /// Creates a [Contact] from a JSON object.
  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);
}
