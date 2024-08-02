import 'package:http_requests/src/core/utils/data_state.dart';
import 'package:http_requests/src/features/employees/data/repository/employee_repository_impl.dart';
import 'package:http_requests/src/features/employees/domain/entity/employee.dart';
import 'package:http_requests/src/features/employees/domain/usecase/get_employee_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'employee_detail_provider.g.dart';

@riverpod
Future<EmployeeEntity> employeeDetail(EmployeeDetailRef ref, int id) async {
  final employeeRepository = ref.watch(employeeRepositoryProvider);

  final employeeResult =
      await GetEmployeeUsecase(employeeRepository)(params: id);

  if (employeeResult is DataSuccess) return employeeResult.data!;

  final error = employeeResult as DataFailed;

  print("Error: ${error.error}");

  throw error;
}
