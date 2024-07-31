import 'package:http_requests/src/features/employees/domain/entity/employee.dart';
import 'package:http_requests/src/core/utils/data_state.dart';

abstract class EmployeeRepository {
  Future<DataState<List<EmployeeEntity>>> getEmployees();
}
