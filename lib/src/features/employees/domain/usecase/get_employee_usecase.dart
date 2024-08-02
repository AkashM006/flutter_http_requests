import 'package:http_requests/src/core/usecases/usecase.dart';
import 'package:http_requests/src/core/utils/data_state.dart';
import 'package:http_requests/src/features/employees/domain/entity/employee.dart';
import 'package:http_requests/src/features/employees/domain/repository/employee_repository.dart';

class GetEmployeeUsecase extends Usecase<DataState<EmployeeEntity>, int> {
  final EmployeeRepository _employeeRepository;

  GetEmployeeUsecase(this._employeeRepository);

  @override
  Future<DataState<EmployeeEntity>> call({int? params}) {
    return _employeeRepository.getEmployee(params ?? -1);
  }
}
