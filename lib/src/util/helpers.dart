/// Converts [value] to a [num] if possible, otherwise returns null.
num? numOrNull(dynamic value) {
  if (value == null) return null;
  if (value is num) return value;
  return num.tryParse(value.toString());
}

/// Converts [value] to an [int] if possible, otherwise returns null.
int? intOrNull(dynamic value) {
  if (value == null) return null;
  if (value is int) return value;
  return int.tryParse(value.toString());
}
