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
    Employee.new("Dutch Matrix","Commando@example.com","919-877-1276", 90000)
  end

  def test_get_employee_name
    employee = Employee.new("Dutch Matrix","Commando@example.com","919-877-1276", 90000)
    assert "Dutch Matrix", employee.name
  end

  def test_get_employee_email
    employee = Employee.new("Dutch Matrix","Commando@example.com","919-877-1276", 90000)
    assert "Commando@example.com", employee.email
  end

  def test_get_employee_phone
    employee = Employee.new("Dutch Matrix","Commando@example.com","919-877-1276", 90000)
    assert "919-877-1276", employee.phone
  end

  def test_get_employee_salary
    employee = Employee.new("Dutch Matrix","Commando@example.com","919-877-1276", 90000)
    assert 90000, employee.salary
  end

end
