import 'package:flutter/material.dart';
import 'package:learning_flutter/EmployeeList/view_models/employee_view_model.dart';
import 'package:learning_flutter/services/remote/main_api.dart';

class EmployeeListViewModel extends ChangeNotifier {
  List<EmployeeViewModel> employees = List<EmployeeViewModel>();

  Future<void> getAllEmployee() async {
    final results = await MainApi().getAllEmployee();
    this.employees =
        results.map((e) => EmployeeViewModel(employee: e)).toList();
    notifyListeners();
  }

  Future<void> getAllEmployeeWithHeader() async {
    final results = await MainApi().getAllEmployeeWithHeader();
    this.employees =
        results.map((e) => EmployeeViewModel(employee: e)).toList();
    notifyListeners();
  }
}
