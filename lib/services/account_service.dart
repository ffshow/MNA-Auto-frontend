//CODE GENERATED, DO NOT EDIT.
import 'dart:async';

import 'package:dio/dio.dart';
import 'package:mna/models/models.dart';

// AccountService
class AccountService {
  final Dio _dio;

  AccountService(this._dio);

  StreamController<AccountModel> createStream = StreamController.broadcast();
  Stream<AccountModel> get onCreate => createStream.stream;

  StreamController<AccountModel> updateStream = StreamController.broadcast();
  Stream<AccountModel> get onUpdate => updateStream.stream;

  StreamController<AccountModel> deleteStream = StreamController.broadcast();
  Stream<AccountModel> get onDelete => deleteStream.stream;

  void create(AccountModel g) {
    createStream.sink.add(g);
  }

  void delete(AccountModel g) {
    deleteStream.sink.add(g);
  }

  void update(AccountModel g) {
    updateStream.sink.add(g);
  }

  /// ### Total records
  /// Description: Total records
  ///
  /// Path /api/account/total
  Future<TotalCount> getApiAccountTotal() async {
    final Response response = await _dio.get(
      "/api/account/total",
      queryParameters: <String, dynamic>{},
    );
    if (response.statusCode == 200) {
      return TotalCount.fromJson(response.data as Map<String, Object?>);
    }

    if (response.statusCode == 599) {
      final ResponseError error =
          ResponseError.fromJson((response.data as Map<String, Object>));
      throw Exception(error.message);
    }

    throw Exception("Something went wrong");
  }

  /// ### Update a account
  /// Description: Edit account
  ///
  /// Path param: **id** string
  ///
  /// Path /api/account/{id}
  Future<AccountModel> putApiAccount(
    AccountModel data,
    String id,
  ) async {
    final Response response = await _dio.put(
      "/api/account/$id",
      data: data.toJson(),
      queryParameters: <String, dynamic>{},
    );
    if (response.statusCode == 200) {
      return AccountModel.fromJson(response.data as Map<String, Object?>);
    }

    if (response.statusCode == 404) {
      final ResponseError error =
          ResponseError.fromJson((response.data as Map<String, Object>));
      throw Exception(error.message);
    }

    if (response.statusCode == 500) {
      final ResponseError error =
          ResponseError.fromJson((response.data as Map<String, Object>));
      throw Exception(error.message);
    }

    throw Exception("Something went wrong");
  }

  /// ### Get account by ID
  /// Description: Get account by ID
  ///
  /// Path param: **id** string
  ///
  /// Path /api/account/{id}
  Future<AccountModel> getApiAccount(
    String id,
  ) async {
    final Response response = await _dio.get(
      "/api/account/$id",
      queryParameters: <String, dynamic>{},
    );
    if (response.statusCode == 200) {
      return AccountModel.fromJson(response.data as Map<String, Object?>);
    }

    if (response.statusCode == 404) {
      final ResponseError error =
          ResponseError.fromJson((response.data as Map<String, Object>));
      throw Exception(error.message);
    }

    if (response.statusCode == 500) {
      final ResponseError error =
          ResponseError.fromJson((response.data as Map<String, Object>));
      throw Exception(error.message);
    }

    throw Exception("Something went wrong");
  }

  /// ### Create a new account
  /// Description: Register account
  ///
  /// Path /api/account
  Future<AccountModel> postApiAccount(
    CreateAccountModel data,
  ) async {
    final Response response = await _dio.post(
      "/api/account",
      data: data.toJson(),
      queryParameters: <String, dynamic>{},
    );
    if (response.statusCode == 200) {
      return AccountModel.fromJson(response.data as Map<String, Object?>);
    }

    if (response.statusCode == 404) {
      final ResponseError error =
          ResponseError.fromJson((response.data as Map<String, Object>));
      throw Exception(error.message);
    }

    if (response.statusCode == 500) {
      final ResponseError error =
          ResponseError.fromJson((response.data as Map<String, Object>));
      throw Exception(error.message);
    }

    throw Exception("Something went wrong");
  }

  /// ### Create many account
  /// Description: Register account (useful for importing data)
  ///
  /// Path /api/account_import
  Future<List<CreateAccountModel>> postApiAccountImport(
    AccountModel data,
  ) async {
    final Response response = await _dio.post(
      "/api/account_import",
      data: data.toJson(),
      queryParameters: <String, dynamic>{},
    );
    if (response.statusCode == 200) {
      return (response.data as List)
          .map((e) => CreateAccountModel.fromJson(e))
          .toList();
    }

    if (response.statusCode == 404) {
      final ResponseError error =
          ResponseError.fromJson((response.data as Map<String, Object>));
      throw Exception(error.message);
    }

    if (response.statusCode == 500) {
      final ResponseError error =
          ResponseError.fromJson((response.data as Map<String, Object>));
      throw Exception(error.message);
    }

    throw Exception("Something went wrong");
  }

  /// ### List account
  /// Description: List account
  ///
  /// Query param: **page** integer page
  ///
  /// Query param: **per_page** integer page size
  ///
  /// Query param: **sort_by** string sort field
  ///
  /// Query param: **descending** boolean order
  ///
  ///
  /// Path /api/account_list
  Future<ListAccountModel> getApiAccountList({
    int? page,
    int? per_page,
    String? sort_by,
    bool? descending,
  }) async {
    final Response response = await _dio.get(
      "/api/account_list",
      queryParameters: <String, dynamic>{
        if (page != null) "page": page,
        if (per_page != null) "per_page": per_page,
        if (sort_by != null) "sort_by": sort_by,
        if (descending != null) "descending": descending,
      },
    );
    if (response.statusCode == 200) {
      return ListAccountModel.fromJson(response.data as Map<String, Object?>);
    }

    if (response.statusCode == 503) {
      final ResponseError error =
          ResponseError.fromJson((response.data as Map<String, Object>));
      throw Exception(error.message);
    }

    throw Exception("Something went wrong");
  }
}
