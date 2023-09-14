//CODE GENERATED, DO NOT EDIT.
import 'package:dio/dio.dart';
import 'package:mna/models/models.dart';

// SparePartService
class SparePartService{
  final Dio _dio;

  SparePartService(this._dio);

  /// ### Get spare_part by ID
  /// Description: Get spare_part by ID
  ///
  /// Path param: **id** string
  /// 
  /// Path /api/spare_part/{id}
  Future<SparePartModel> getApiSparePart(String id, ) async{
    final Response response = await _dio.get(
      "/api/spare_part/$id",
      queryParameters: <String, dynamic>{},
    );
    if (response.statusCode == 200){
        return SparePartModel.fromJson(response.data as Map<String, Object?>);
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

  /// ### Update a spare_part
  /// Description: Edit spare_part
  ///
  /// Path param: **id** string
  /// 
  /// Path /api/spare_part/{id}
  Future<SparePartModel> putApiSparePart(String id, ) async{
    final Response response = await _dio.put(
      "/api/spare_part/$id",
      queryParameters: <String, dynamic>{},
    );
    if (response.statusCode == 200){
        return SparePartModel.fromJson(response.data as Map<String, Object?>);
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

  /// ### Create a new spare_part
  /// Description: Register spare_part
  /// 
  /// Path /api/spare_part
  Future<SparePartModel> postApiSparePart() async{
    final Response response = await _dio.post(
      "/api/spare_part",
      queryParameters: <String, dynamic>{},
    );
    if (response.statusCode == 200){
        return SparePartModel.fromJson(response.data as Map<String, Object?>);
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

  /// ### List spare_part
  /// Description: List spare_part
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
  /// Path /api/spare_part_list
  Future<List<SparePartModel>> getApiSparePartList({ int? page, int? per_page, String? sort_by, bool? descending, }) async{
    final Response response = await _dio.get(
      "/api/spare_part_list",
      queryParameters: <String, dynamic>{
        if (page != null) "page": page,
        if (per_page != null) "per_page": per_page,
        if (sort_by != null) "sort_by": sort_by,
        if (descending != null) "descending": descending,},
    );
    if (response.statusCode == 200){
        return (response.data as List)
          .map((e) => SparePartModel.fromJson(e))
          .toList();
    } 
    
    if (response.statusCode == 503){
    final ResponseError error =
          ResponseError.fromJson((response.data as Map<String, Object>));
      throw Exception(error.message);
    } 
    
    throw Exception("Something went wrong");
  }

  /// ### Create many spare_part
  /// Description: Register spare_part (useful for importing data)
  /// 
  /// Path /api/spare_part_import
  Future<List<SparePartModel>> postApiSparePartImport() async{
    final Response response = await _dio.post(
      "/api/spare_part_import",
      queryParameters: <String, dynamic>{},
    );
    if (response.statusCode == 200){
        return (response.data as List)
          .map((e) => SparePartModel.fromJson(e))
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

}