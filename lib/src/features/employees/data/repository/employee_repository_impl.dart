import 'dart:io';

import 'package:dio/dio.dart';
import 'package:http_requests/src/features/employees/data/data_sources/remote/employee_api_service.dart';
import 'package:http_requests/src/features/employees/data/models/employee.dart';
import 'package:http_requests/src/features/employees/domain/repository/employee_repository.dart';
import 'package:http_requests/src/core/utils/data_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'employee_repository_impl.g.dart';

class EmployeeRepositoryImpl extends EmployeeRepository {
  final EmployeeApiService _employeeApiService;

  EmployeeRepositoryImpl(this._employeeApiService);

  @override
  Future<DataState<List<EmployeeModel>>> getEmployees() async {
    try {
      final httpResponse = await _employeeApiService.getEmployees();
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data.users);
      }

      return DataFailed(
        DioException(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          type: DioExceptionType.badResponse,
          requestOptions: httpResponse.response.requestOptions,
        ),
      );
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}

@riverpod
EmployeeRepository employeeRepository(EmployeeRepositoryRef ref) {
  final employeeApiService = ref.watch(employeeApiServiceProvider);

  return EmployeeRepositoryImpl(employeeApiService);
}
