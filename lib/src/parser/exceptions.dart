// Custom exceptions for parsing errors.
class OpenApiParserException implements Exception {
  final String message;
  const OpenApiParserException(this.message);

  @override
  String toString() => 'OpenApiParserException: $message';
}
