class ApiExceptions implements Exception {
  final String message;

  ApiExceptions(this.message);

  @override
  String toString() => message;
}
