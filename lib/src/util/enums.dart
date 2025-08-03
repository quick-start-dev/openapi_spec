enum OpenApiVersion { v2, v30, v31 }

enum HttpMethod { get, post, put, delete, patch, head, options, trace }

enum ParameterLocation {
  query,
  header,
  path,
  cookie,
  body,
  formData;

  static ParameterLocation fromString(String value) {
    switch (value) {
      case 'query':
        return ParameterLocation.query;
      case 'header':
        return ParameterLocation.header;
      case 'path':
        return ParameterLocation.path;
      case 'cookie':
        return ParameterLocation.cookie;
      case 'body':
        return ParameterLocation.body;
      case 'formData':
        return ParameterLocation.formData;

      default:
        throw ArgumentError('Invalid ParameterLocation: $value');
    }
  }
}
