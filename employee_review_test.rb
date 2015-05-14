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

    assert_equal "Development", department.name
  end

  def test_create_employee
    department = Department.new("Development")

    Employee.new("Dutch Matrix","Commando@example.com","919-877-1276", 90000)
  end

  def test_get_employee_name
    department = Department.new("Development")
    employee = Employee.new("Dutch Matrix","Commando@example.com","919-877-1276", 90000)

    assert_equal "Dutch Matrix", employee.name
  end

  def test_get_employee_email
    department = Department.new("Development")
    employee = Employee.new("Dutch Matrix","Commando@example.com","919-877-1276", 90000)

    assert_equal "Commando@example.com", employee.email
  end

  def test_get_employee_phone
    department = Department.new("Development")
    employee = Employee.new("Dutch Matrix","Commando@example.com","919-877-1276", 90000)

    assert_equal "919-877-1276", employee.phone
  end

  def test_get_employee_salary
    department = Department.new("Development")
    employee = Employee.new("Dutch Matrix","Commando@example.com","919-877-1276", 90000)

    assert_equal 90000, employee.salary
  end

  def test_add_employee_to_department
    department = Department.new("Development")
    employee = Employee.new("Dutch Matrix","Commando@example.com","919-877-1276", 90000)

    assert department.add_employee(employee)
  end

  def test_total_salaries_of_a_department
    department = Department.new("Development")
    employee_one = Employee.new("Dutch Matrix","Commando@example.com","919-877-1276", 90000)
    employee_two = Employee.new("John Rambo","Rambo@example.com","919-999-1276", 10000)

    assert department.add_employee(employee_one)
    assert department.add_employee(employee_two)
    assert_equal 100000, department.salary_total
  end

  def test_add_review_to_employee
    employee_one = Employee.new("Dutch Matrix","Commando@example.com","919-877-1276", 90000)

    assert employee_one.add_review("Zeke is a very positive person and encourages those around him,
    but he has not done well technically this year.  There are two areas in which Zeke has room
    for improvement.  First, when communicating verbally (and sometimes in writing), he has a
    tendency to use more words than are required.  This conversational style does put people at
    ease, which is valuable, but it often makes the meaning difficult to isolate, and can cause
    confusion.")
  end

  def test_add_performance_rating
    employee_one = Employee.new("Dutch Matrix","Commando@example.com","919-877-1276", 90000)

    assert employee_one.add_rating("positive")
  end

end
