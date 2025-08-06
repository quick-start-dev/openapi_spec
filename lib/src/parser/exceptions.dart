/// Exception thrown when an error occurs while parsing
/// an OpenAPI specification.
class OpenApiParserException implements Exception {
  /// Creates a new [OpenApiParserException].
  ///
  /// The [message] should describe the cause of the error in detail.
  /// Optionally, [location] can be provided to indicate the section
  /// of the spec that caused the failure.
  const OpenApiParserException(this.message, {this.location});

  /// A error message.
  final String message;

  /// The part of the OpenAPI spec where the error occurred (optional).
  final String? location;

  @override
  String toString() {
    if (location != null) {
      return 'OpenApiParserException at $location: $message';
    }
    return 'OpenApiParserException: $message';
  }
}
