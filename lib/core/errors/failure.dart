import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');

      case DioErrorType.sendTimeout:
        return ServerFailure('Sent timeout with ApiServer');

      case DioErrorType.receiveTimeout:
        return ServerFailure('Recevie timeout with ApiServer');

      case DioErrorType.badCertificate:
        return ServerFailure('BadCertificate timeout with ApiServer');

      case DioErrorType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);

      case DioErrorType.cancel:
        return ServerFailure('Request to ApiServer was canceled');

      case DioErrorType.connectionError:
        return ServerFailure('connectionError  timeout with ApiServer');

      case DioErrorType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('No Internet connection');
        }
        return ServerFailure('Unexpected error: ${dioError.message} try again');
      default:
      return ServerFailure('Opps There was an error , please try again !');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request was not found , please try later !');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error , please try later !');
    } else {
      return ServerFailure('Opps There was an error , please try again !');
    }
  }
}
