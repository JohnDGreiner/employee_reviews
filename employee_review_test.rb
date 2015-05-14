require 'minitest/autorun'
require 'minitest/pride'

#Note: This line is going to fail first.
require './department.rb'
require './employee'

class EmployeeReviewTest < Minitest::Test

  def test_department_exists
    assert Department
  end

  def test_create_department_name
    department = Department.new("Development")
    assert "Development", department.name
  end

  def test_create_employee
    department = Department.new("Development")
    Employee.new("Dutch Matrix","Commando@example.com","919-877-1276", 90000, department)
  end

  def test_get_employee_name
    department = Department.new("Development")
    employee = Employee.new("Dutch Matrix","Commando@example.com","919-877-1276", 90000, department)
    assert "Dutch Matrix", employee.name
  end

  def test_get_employee_email
    department = Department.new("Development")
    employee = Employee.new("Dutch Matrix","Commando@example.com","919-877-1276", 90000, department)
    assert "Commando@example.com", employee.email
  end

  def test_get_employee_phone
    department = Department.new("Development")
    employee = Employee.new("Dutch Matrix","Commando@example.com","919-877-1276", 90000, department)
    assert "919-877-1276", employee.phone
  end

  def test_get_employee_salary
    department = Department.new("Development")
    employee = Employee.new("Dutch Matrix","Commando@example.com","919-877-1276", 90000, department)
    assert 90000, employee.salary
  end

  def test_employee_has_department
    department = Department.new("Development")
    employee = Employee.new("Dutch Matrix","Commando@example.com","919-877-1276", 90000, department)
  end

end
