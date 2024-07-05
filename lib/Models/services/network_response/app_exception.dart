class AppException implements Exception {
  final String? message;
  final String? prefix;

  AppException([this.message, this.prefix]);

  @override
  String toString() {
    return '$prefix$message';
  }
}

// Exception for errors occurring during data fetching
class FetchDataException extends AppException {
  FetchDataException([String? message])
      : super(message, 'Error While Communication: ');
}

// Exception for handling bad requests
class BadRequestException extends AppException {
  BadRequestException([String? message])
      : super(message ?? 'Invalid Request', 'Error While Connecting to Database: ');
}

// Exception for handling unauthorized access
class UnAuthorizedException extends AppException {
  UnAuthorizedException([String? message])
      : super(message ?? 'Unauthorized Access', 'Unauthorized Request: ');
}

// Exception for handling server errors
class ServerException extends AppException {
  ServerException([String? message])
      : super(message ?? 'Server encountered an error', 'Server Error: ');
}

// Exception for handling request timeouts
class TimeoutException extends AppException {
  TimeoutException([String? message])
      : super(message ?? 'The request timed out', 'Request Timed Out: ');
}

// Exception for handling resource not found errors
class NotFoundException extends AppException {
  NotFoundException([String? message])
      : super(message ?? 'Resource not found', 'Resource Not Found: ');
}

// Exception for handling rate limit exceed errors
class RateLimitExceededException extends AppException {
  RateLimitExceededException([String? message])
      : super(message ?? 'Rate limit exceeded', 'Rate Limit Exceeded: ');
}
