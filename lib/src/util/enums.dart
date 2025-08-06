/// Supported versions of the OpenAPI specification.
enum OpenApiVersion {
  /// OpenAPI Specification 2.0 (Swagger).
  v20,

  /// OpenAPI Specification 3.0.
  v30,

  /// OpenAPI Specification 3.1.
  v31,
}

/// HTTP methods supported in an OpenAPI definition.
enum HttpMethod {
  /// HTTP GET request (retrieves data).
  get,

  /// HTTP POST request (creates a resource).
  post,

  /// HTTP PUT request (replaces a resource).
  put,

  /// HTTP DELETE request (removes a resource).
  delete,

  /// HTTP PATCH request (partially updates a resource).
  patch,

  /// HTTP HEAD request (retrieves headers only).
  head,

  /// HTTP OPTIONS request (retrieves available methods).
  options,

  /// HTTP TRACE request (used for debugging).
  trace,
}

/// The location of a parameter in an OpenAPI operation.
enum ParameterLocation {
  /// Parameter is appended to the query string of the URL.
  query,

  /// Parameter is passed in the request header.
  header,

  /// Parameter is part of the URL path.
  path,

  /// Parameter is stored in an HTTP cookie.
  cookie,

  /// Parameter is included in the request body.
  ///
  /// > Note: Valid only in OpenAPI 2.0 (Swagger).
  body,

  /// Parameter is provided as form data.
  ///
  /// > Note: Valid only in OpenAPI 2.0 (Swagger).
  formData;

  /// Creates a [ParameterLocation] from a string value.
  ///
  /// The lookup is case-insensitive, so `"Query"`, `"QUERY"`,
  /// and `"query"` will all resolve to [ParameterLocation.query].
  ///
  /// Throws an [ArgumentError] if the input does not match
  /// any valid parameter location.
  static ParameterLocation fromString(String value) {
    return ParameterLocation.values.firstWhere(
      (e) => e.name.toLowerCase() == value.toLowerCase(),
      orElse: () => throw ArgumentError('Invalid ParameterLocation: $value'),
    );
  }
}

// Represents the `format` keyword in an OpenAPI schema.
///
/// This enum provides a set of commonly used formats that can be
/// paired with a `type` to give a more specific hint about the data's
/// intended structure and validation rules.
///
/// For example, `type: string` with `format: date-time` tells
/// consumers that the string should be a date and time value.
///
/// Note that the OpenAPI specification allows for custom, non-standard
/// formats, so this enum is not exhaustive.
enum Format {
  // Integers
  /// A signed 32-bit integer.
  int32('int32'),

  /// A signed 64-bit integer.
  int64('int64'),

  // Numbers (floating-point)
  /// A single-precision floating-point number.
  float('float'),

  /// A double-precision floating-point number.
  double('double'),

  // Strings
  /// Base64-encoded characters.
  ///
  /// For example: "U3dhZ2dlciByb2Nrcw=="
  byte('byte'),

  /// Binary data, used for file uploads or other binary content.
  /// The consumer can expect a raw binary octet stream.
  binary('binary'),

  /// A full-date as defined by RFC 3339.
  ///
  /// For example: "2025-08-06"
  date('date'),

  /// A date-time as defined by RFC 3339.
  ///
  /// For example: "2025-08-06T12:00:00Z"
  dateTime('date-time'),

  /// A hint to user interfaces to obscure the input,
  /// such as a password field.
  password('password');

  /// Creates a new [Format] with the given [value].
  const Format(this.value);

  /// The raw string value of the format.
  final String value;

  /// Returns a [Format] enum from its string value.
  ///
  /// Returns `null` if the string value is not a supported format.
  static Format? fromValue(String value) {
    for (final format in Format.values) {
      if (format.value == value) {
        return format;
      }
    }
    return null;
  }
}
