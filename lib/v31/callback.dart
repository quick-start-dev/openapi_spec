import 'package:meta/meta.dart';
import 'package:openapi_spec_plus/v31/path.dart';

/// A map of possible out-of-band callbacks related to the parent operation.
///
/// The key in this map is a runtime expression, evaluated at runtime,
/// that identifies a URL to use for the callback operation.
@immutable
class Callback {
  /// Creates a [Callback] object with a callback expression
  /// and its corresponding [PathItem] object.
  const Callback({required this.expression, required this.path});

  /// Creates a [Callback] from a JSON object.
  factory Callback.fromJson(Map<String, dynamic> json) {
    final expression = json.keys.first;
    final path = PathItem.fromJson(json.values.first as Map<String, dynamic>);

    return Callback(expression: expression, path: path);
  }

  /// The runtime expression that evaluates to a URL.
  final String expression;

  /// The Path object that defines the callback operation.
  final PathItem path;

  /// Converts this [Callback] to a JSON object.
  Map<String, dynamic> toJson() {
    return {expression: path.toJson()};
  }
}
