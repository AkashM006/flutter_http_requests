import 'package:http_requests/src/core/constants/constants.dart';
import 'package:http_requests/src/features/employees/data/models/employee.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'employee_api_service.g.dart';

@RestApi(baseUrl: apiBaseUrl)
abstract class EmployeeApiService {
  factory EmployeeApiService(Dio dio) = _EmployeeApiService;

  @GET('/employees')
  Future<HttpResponse<List<EmployeeModel>>> getEmployees();
}
