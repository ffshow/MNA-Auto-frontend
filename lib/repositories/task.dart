import 'package:chopper/chopper.dart';
import 'package:mna/swagger_generated_code/swagger.swagger.dart';

class TaskRepository {
  final Swagger _swagger;

  TaskRepository(this._swagger);

  Response<ModelsListTaskModel>? response;
  Future<ModelsListTaskModel> getTasks() async {
    if (response != null) {
      return response!.body!;
    }
    response = await _swagger.apiTaskListGet(
      page: 1,
      perPage: 100,
      sortBy: 'created_at',
      descending: true,
    );
    return response!.body!;
  }
}
