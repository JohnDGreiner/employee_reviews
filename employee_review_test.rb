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
    employee = Employee.new("Dutch Matrix","Commando@example.com","919-877-1276", 90000)
    assert "Dutch Matrix", employee.name
    assert "Commando@example.com", employee.email
    assert "919-877-1276", employee.phone
    assert 90000, employee.salary
  end

end
