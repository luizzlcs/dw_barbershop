import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../constants/local_storage_keys.dart';

class AuthInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final RequestOptions(:headers, :extra) = options;

    const authHeaderKey = 'authorization';
    headers.remove(authHeaderKey);
    if (extra case {'DIO_AUTH_KEY': true}) {
      final sp = await SharedPreferences.getInstance();
      headers.addAll({
        authHeaderKey: 'Bearer ${sp.getString(LocalStorageKeys.accessToken)}'
      });
    }
  }
}
