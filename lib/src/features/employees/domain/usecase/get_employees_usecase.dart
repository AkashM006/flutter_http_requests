import 'package:http_requests/src/core/usecases/usecase.dart';
import 'package:http_requests/src/core/utils/data_state.dart';
import 'package:http_requests/src/features/employees/data/repository/employee_repository_impl.dart';
import 'package:http_requests/src/features/employees/domain/entity/employee.dart';
import 'package:http_requests/src/features/employees/domain/repository/employee_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_employees_usecase.g.dart';

class GetEmployeesUsecase
    implements Usecase<DataState<List<EmployeeEntity>>, void> {
  final EmployeeRepository _employeeRepository;

  GetEmployeesUsecase(this._employeeRepository);

  @override
  Future<DataState<List<EmployeeEntity>>> call({void params}) {
    return _employeeRepository.getEmployees();
  }
}

@riverpod
GetEmployeesUsecase getEmployeesUsecase(GetEmployeesUsecaseRef ref) {
  final employeeRepository = ref.watch(employeeRepositoryProvider);

  return GetEmployeesUsecase(employeeRepository);
}
