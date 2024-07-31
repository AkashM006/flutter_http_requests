import 'package:http_requests/src/core/usecases/usecase.dart';
import 'package:http_requests/src/core/utils/data_state.dart';
import 'package:http_requests/src/features/employees/domain/entity/employee.dart';
import 'package:http_requests/src/features/employees/domain/repository/employee_repository.dart';

class GetEmployeesUsecase
    implements Usecase<DataState<List<EmployeeEntity>>, void> {
  final EmployeeRepository _employeeRepository;

  GetEmployeesUsecase(this._employeeRepository);

  @override
  Future<DataState<List<EmployeeEntity>>> call({void params}) {
    return _employeeRepository.getEmployees();
  }
}
