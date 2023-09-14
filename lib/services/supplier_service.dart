//CODE GENERATED, DO NOT EDIT.
import 'package:dio/dio.dart';
import 'package:mna/models/models.dart';

// SupplierService
class SupplierService{
  final Dio _dio;

  SupplierService(this._dio);

  /// ### Create many supplier
  /// Description: Register supplier (useful for importing data)
  /// 
  /// Path /api/supplier_import
  Future<List<SupplierModel>> postApiSupplierImport() async{
    final Response response = await _dio.post(
      "/api/supplier_import",
      queryParameters: <String, dynamic>{},
    );
    if (response.statusCode == 200){
        return (response.data as List)
          .map((e) => SupplierModel.fromJson(e))
          .toList();
    } 
    
    if (response.statusCode == 404){
    final ResponseError error =
          ResponseError.fromJson((response.data as Map<String, Object>));
      throw Exception(error.message);
    } 
    
    if (response.statusCode == 500){
    final ResponseError error =
          ResponseError.fromJson((response.data as Map<String, Object>));
      throw Exception(error.message);
    } 
    
    throw Exception("Something went wrong");
  }

  /// ### Get supplier by ID
  /// Description: Get supplier by ID
  ///
  /// Path param: **id** string
  /// 
  /// Path /api/supplier/{id}
  Future<SupplierModel> getApiSupplier(String id, ) async{
    final Response response = await _dio.get(
      "/api/supplier/$id",
      queryParameters: <String, dynamic>{},
    );
    if (response.statusCode == 200){
        return SupplierModel.fromJson(response.data as Map<String, Object?>);
    } 
    
    if (response.statusCode == 404){
    final ResponseError error =
          ResponseError.fromJson((response.data as Map<String, Object>));
      throw Exception(error.message);
    } 
    
    if (response.statusCode == 500){
    final ResponseError error =
          ResponseError.fromJson((response.data as Map<String, Object>));
      throw Exception(error.message);
    } 
    
    throw Exception("Something went wrong");
  }

  /// ### Update a supplier
  /// Description: Edit supplier
  ///
  /// Path param: **id** string
  /// 
  /// Path /api/supplier/{id}
  Future<SupplierModel> putApiSupplier(String id, ) async{
    final Response response = await _dio.put(
      "/api/supplier/$id",
      queryParameters: <String, dynamic>{},
    );
    if (response.statusCode == 200){
        return SupplierModel.fromJson(response.data as Map<String, Object?>);
    } 
    
    if (response.statusCode == 404){
    final ResponseError error =
          ResponseError.fromJson((response.data as Map<String, Object>));
      throw Exception(error.message);
    } 
    
    if (response.statusCode == 500){
    final ResponseError error =
          ResponseError.fromJson((response.data as Map<String, Object>));
      throw Exception(error.message);
    } 
    
    throw Exception("Something went wrong");
  }

  /// ### Create a new supplier
  /// Description: Register supplier
  /// 
  /// Path /api/supplier
  Future<SupplierModel> postApiSupplier() async{
    final Response response = await _dio.post(
      "/api/supplier",
      queryParameters: <String, dynamic>{},
    );
    if (response.statusCode == 200){
        return SupplierModel.fromJson(response.data as Map<String, Object?>);
    } 
    
    if (response.statusCode == 404){
    final ResponseError error =
          ResponseError.fromJson((response.data as Map<String, Object>));
      throw Exception(error.message);
    } 
    
    if (response.statusCode == 500){
    final ResponseError error =
          ResponseError.fromJson((response.data as Map<String, Object>));
      throw Exception(error.message);
    } 
    
    throw Exception("Something went wrong");
  }

  /// ### List supplier
  /// Description: List supplier
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
  /// Path /api/supplier_list
  Future<List<SupplierModel>> getApiSupplierList({ int? page, int? per_page, String? sort_by, bool? descending, }) async{
    final Response response = await _dio.get(
      "/api/supplier_list",
      queryParameters: <String, dynamic>{
        if (page != null) "page": page,
        if (per_page != null) "per_page": per_page,
        if (sort_by != null) "sort_by": sort_by,
        if (descending != null) "descending": descending,},
    );
    if (response.statusCode == 200){
        return (response.data as List)
          .map((e) => SupplierModel.fromJson(e))
          .toList();
    } 
    
    if (response.statusCode == 503){
    final ResponseError error =
          ResponseError.fromJson((response.data as Map<String, Object>));
      throw Exception(error.message);
    } 
    
    throw Exception("Something went wrong");
  }

}