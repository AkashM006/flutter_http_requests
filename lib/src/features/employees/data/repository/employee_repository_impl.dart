import 'package:http_requests/src/features/employees/data/models/employee.dart';
import 'package:http_requests/src/features/employees/domain/repository/employee_repository.dart';
import 'package:http_requests/src/utils/data_state.dart';

class EmployeeRepositoryImpl extends EmployeeRepository {
  @override
  Future<DataState<List<EmployeeModel>>> getEmployees() {
    // TODO: implement getEmployees
    throw UnimplementedError();
  }
}
