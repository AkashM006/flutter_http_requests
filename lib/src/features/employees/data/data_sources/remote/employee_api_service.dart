import 'package:http_requests/src/core/constants/constants.dart';
import 'package:http_requests/src/core/constants/dio/dio.dart';
import 'package:http_requests/src/features/employees/data/models/employee.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'employee_api_service.g.dart';

@RestApi(baseUrl: apiBaseUrl)
abstract class EmployeeApiService {
  factory EmployeeApiService(Dio dio) = _EmployeeApiService;

  @GET('/users')
  Future<HttpResponse<EmployeeListRequestModel>> getEmployees(
      @Path('page') int page);

  @GET('/users/{id}')
  Future<HttpResponse<EmployeeRequestModel>> getEmployee(@Path('id') int id);
}

@riverpod
EmployeeApiService employeeApiService(EmployeeApiServiceRef ref) {
  final dio = ref.watch(dioProvider);

  return EmployeeApiService(dio);
}
