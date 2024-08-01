import 'package:http_requests/src/features/employees/domain/entity/employee.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'employee_list_provider.g.dart';

@riverpod
Future<List<EmployeeEntity>> employees(EmployeesRef ref) async {
  return [];
}
