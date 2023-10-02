import 'package:chopper/chopper.dart';
import 'package:mna/utils/pagination.dart';

import '../swagger_generated_code/swagger.swagger.dart';

class OwnerRepository {
  final Swagger _swagger;

  OwnerRepository(this._swagger);

  Response<ModelsListOwnerModel>? _res;
  Pagination? _pagination;

  Future<Response<ModelsListOwnerModel>> getOwners({Pagination? p}) async {
    if (_res != null && _pagination == p) {
      return _res!;
    }
    _pagination = p;
    _res = await _swagger.apiOwnerListGet(
      page: p?.page,
      perPage: p?.perPage,
      sortBy: p?.sortBy,
      descending: p?.descending,
    );
    return _res!;
  }
}
