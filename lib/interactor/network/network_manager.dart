import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:injectable/injectable.dart';
import 'package:worker_manager/worker_manager.dart';

@singleton
class NetworkManager {
  Dio createDio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://pokeapi.co/api/v2',
        sendTimeout: 30000,
        connectTimeout: 30000,
        receiveTimeout: 30000,
      ),
    );

    final options = CacheOptions(
      policy: CachePolicy.forceCache,
      store: MemCacheStore(),
      hitCacheOnErrorExcept: [401, 403],
      maxStale: const Duration(days: 7),
    );

    dio.interceptors.add(LogInterceptor());
    dio.interceptors.add(DioCacheInterceptor(options: options));
    (dio.transformer as DefaultTransformer).jsonDecodeCallback = parseJsonInBackground;

    return dio;
  }
}

Map<String, Object?> _parseAndDecode(String response) {
  return jsonDecode(response) as Map<String, Object?>;
}

Future parseJsonInBackground(String text) {
  return Executor().execute<String, void, void, void, Map<String, Object?>>(
    arg1: text,
    fun1: _parseAndDecode,
  );
}
