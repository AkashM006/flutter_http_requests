import 'package:http_requests/src/core/utils/data_state.dart';
import 'package:http_requests/src/features/employees/data/repository/employee_repository_impl.dart';
import 'package:http_requests/src/features/employees/domain/entity/employee.dart';
import 'package:http_requests/src/features/employees/domain/usecase/get_employees_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'employee_list_provider.g.dart';

@riverpod
Future<List<EmployeeEntity>> employeeList(
  EmployeeListRef ref,
) async {
  final employeeRepository = ref.watch(employeeRepositoryProvider);

  final employeesResult = await GetEmployeesUsecase(employeeRepository)();

  if (employeesResult is DataSuccess) return employeesResult.data!;

  final error = employeesResult as DataFailed;

  print("Error: ${error.error}");

  throw error.data;
}
