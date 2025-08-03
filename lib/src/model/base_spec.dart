import 'package:meta/meta.dart';
import 'package:openapi_spec/src/model/path.dart';
import 'package:openapi_spec/src/util/enums.dart';

/// The abstract base class for all OpenAPI specification versions.
///
/// This class contains properties and methods
/// common to all OpenAPI spec versions.
@immutable
abstract class BaseOpenApiSpec {
  /// Basic constructor for the base OpenAPI specification.
  const BaseOpenApiSpec({
    required this.tags,
    required this.paths,
    required this.openapi,
    this.externalDocs,
    this.info,
  });

  /// The version of the OpenAPI specification.
  final String openapi;

  /// Metadata about the API.
  final Info? info;

  /// A list of tags for API documentation.
  final List<Tag> tags;

  /// The available paths and their operations.
  final Map<String, Path> paths;

  /// External documentation for the API.
  final ExternalDocs? externalDocs;

  /// Gets the OpenAPI version from the [openapi] string.
  OpenApiVersion get version {
    if (openapi.startsWith('3.0')) {
      return OpenApiVersion.v30;
    } else if (openapi.startsWith('3.1')) {
      return OpenApiVersion.v31;
    } else {
      return OpenApiVersion.v2;
    }
  }

  /// Converts this [BaseOpenApiSpec] object to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      version == OpenApiVersion.v2 ? 'swagger' : 'openapi': openapi,
      if (info != null) 'info': info?.toJson(),
      if (externalDocs != null) 'externalDocs': externalDocs?.toJson(),
      'tags': tags.map((e) => e.toJson()).toList(),
      'paths': paths.map((key, value) => MapEntry(key, value.toJson())),
    };
  }
}

/// Represents the contact information for the API.
class Contact {
  /// Creates a [Contact] object.
  Contact({this.name, this.url, this.email});

  /// Creates a [Contact] from a JSON object.
  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
      name: json['name'] as String?,
      url: json['url'] as String?,
      email: json['email'] as String?,
    );
  }

  /// The name of the contact person or organization.
  final String? name;

  /// The URL pointing to the contact information.
  final String? url;

  /// The email address of the contact person or organization.
  final String? email;

  /// Converts this [Contact] object to a JSON map.
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (name != null) map['name'] = name;
    if (url != null) map['url'] = url;
    if (email != null) map['email'] = email;
    return map;
  }
}

/// Represents external documentation for the API.
@immutable
class ExternalDocs {
  /// Creates an [ExternalDocs] object.
  const ExternalDocs({required this.description, required this.url});

  /// Creates an [ExternalDocs] from a JSON object.
  factory ExternalDocs.fromJson(Map<String, dynamic> json) {
    return ExternalDocs(
      description:
          json['description'] == null ? '' : json['description'] as String,
      url: json['url'] == null ? '' : json['url'] as String,
    );
  }

  /// A short description of the external documentation.
  final String description;

  /// The URL for the external documentation.
  final String url;

  /// Converts this [ExternalDocs] object to a JSON map.
  Map<String, dynamic> toJson() {
    return {'description': description, 'url': url};
  }
}

/// Represents the metadata about the API.
class Info {
  /// Creates an [Info] object.
  Info({
    required this.title,
    required this.version,
    this.description,
    this.termsOfService,
    this.contact,
    this.license,
    this.summary,
    this.xNamespace,
  });

  /// Creates an [Info] from a JSON object.
  factory Info.fromJson(Map<String, dynamic> json) {
    return Info(
      title: json['title'] as String,
      version: json['version'] as String,
      description: json['description'] as String?,
      termsOfService: json['termsOfService'] as String?,
      contact:
          json['contact'] != null
              ? Contact.fromJson(json['contact'] as Map<String, dynamic>)
              : null,
      license:
          json['license'] != null
              ? License.fromJson(json['license'] as Map<String, dynamic>)
              : null,
      summary: json['summary'] as String?,
      xNamespace: json['x-namespace'] as String?,
    );
  }

  /// The title of the API.
  final String title;

  /// The version of the API.
  final String version;

  /// A short description of the API.
  final String? description;

  /// A URL to the API's terms of service.
  final String? termsOfService;

  /// The contact information for the API.
  final Contact? contact;

  /// The license information for the API.
  final License? license;

  /// A short summary of the API.
  final String? summary;

  /// An optional vendor extension for the namespace.
  final String? xNamespace;

  /// Converts this [Info] object to a JSON map.
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{'title': title, 'version': version};
    if (description != null) map['description'] = description;
    if (termsOfService != null) map['termsOfService'] = termsOfService;
    if (contact != null) map['contact'] = contact!.toJson();
    if (license != null) map['license'] = license!.toJson();
    if (summary != null) map['summary'] = summary;
    if (xNamespace != null) map['x-namespace'] = xNamespace;
    return map;
  }
}

/// Represents the license information for the API.
class License {
  /// Creates a [License] object.
  License({required this.name, this.url});

  /// Creates a [License] from a JSON object.
  factory License.fromJson(Map<String, dynamic> json) {
    return License(name: json['name'] as String, url: json['url'] as String?);
  }

  /// The name of the license.
  final String name;

  /// A URL to the license information.
  final String? url;

  /// Converts this [License] object to a JSON map.
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{'name': name};
    if (url != null) map['url'] = url;
    return map;
  }
}

/// Represents a tag used for grouping API operations.
@immutable
class Tag {
  /// Creates a [Tag] object.
  const Tag({required this.name, this.description, this.externalDocs});

  /// Creates a [Tag] from a JSON object.
  factory Tag.fromJson(Map<String, dynamic> json) {
    return Tag(
      name: json['name'] as String,
      description: json['description'] as String?,
      externalDocs:
          json['externalDocs'] != null
              ? ExternalDocs.fromJson(
                json['externalDocs'] as Map<String, dynamic>,
              )
              : null,
    );
  }

  /// The name of the tag.
  final String name;

  /// A short description for the tag.
  final String? description;

  /// External documentation for this tag.
  final ExternalDocs? externalDocs;

  /// Converts this [Tag] object to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      if (description != null) 'description': description,
      if (externalDocs != null) 'externalDocs': externalDocs!.toJson(),
    };
  }
}
