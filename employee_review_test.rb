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

    Employee.new(name: "Dutch Matrix", email: "Commando@example.com", phone: "919-877-1276", salary: 90000)
  end

  def test_get_employee_name
    department = Department.new("Development")
    employee = Employee.new(name: "Dutch Matrix", email: "Commando@example.com", phone: "919-877-1276", salary: 90000)

    assert_equal "Dutch Matrix", employee.name
  end

  def test_get_employee_email
    department = Department.new("Development")
    employee = Employee.new(email: "Commando@example.com", phone: "919-877-1276", salary: 90000, name: "Dutch Matrix")

    assert_equal "Commando@example.com", employee.email
  end

  def test_get_employee_phone
    department = Department.new("Development")
    employee = Employee.new(name: "Dutch Matrix", email: "Commando@example.com", phone: "919-877-1276", salary: 90000)
    assert_equal "919-877-1276", employee.phone
  end

  def test_get_employee_salary
    department = Department.new("Development")
    employee = Employee.new(name: "Dutch Matrix", email: "Commando@example.com", phone: "919-877-1276", salary: 90000)

    assert_equal 90000, employee.salary
  end

  def test_add_employee_to_department
    department = Department.new("Development")
    employee = Employee.new(name: "Dutch Matrix", email: "Commando@example.com", phone: "919-877-1276", salary: 90000)

    assert department.add_employee(employee)
  end

  def test_total_salaries_of_a_department
    department = Department.new("Development")
    employee_one = Employee.new(name: "Dutch Matrix", email: "Commando@example.com", phone: "919-877-1276", salary: 90000)
    employee_two = Employee.new(name: "John Rambo", email: "Rambo@example.com", phone: "919-999-1276", salary: 10000)

    assert department.add_employee(employee_one)
    assert department.add_employee(employee_two)
    assert_equal 100000, department.salary_total
  end

  def test_add_review_to_employee
    employee_one = Employee.new(name: "Dutch Matrix", email: "Commando@example.com", phone: "919-877-1276", salary: 90000)

    assert employee_one.add_review("Zeke is a very positive person and encourages those around him,
    but he has not done well technically this year.  There are two areas in which Zeke has room
    for improvement.  First, when communicating verbally (and sometimes in writing), he has a
    tendency to use more words than are required.  This conversational style does put people at
    ease, which is valuable, but it often makes the meaning difficult to isolate, and can cause
    confusion.")
  end

  def test_add_satisfactory_boolean
    employee_one = Employee.new(name: "Dutch Matrix", email: "Commando@example.com", phone: "919-877-1276", salary: 90000)

    assert employee_one.satisfactory?(true)
    assert_equal true, employee_one.satisfactory
  end

  def test_employee_can_get_raise
    employee_one = Employee.new(name: "Dutch Matrix", email: "Commando@example.com", phone: "919-877-1276", salary: 90000)

    assert employee_one.give_raise(10000.95)
    assert_equal 100000.95, employee_one.salary
  end

  def test_giving_department_a_raise
    development = Department.new("Development")
    sales = Department.new("sales")
    employee_one = Employee.new(name: "Clark Kent", email: "superman@example.com", phone: "111-111-1111", salary: 90000)
    employee_two = Employee.new(name: "Barry Allen", email: "flash@example.com", phone: "222-222-2222", salary: 50000)
    employee_three = Employee.new(name: "Oliver Queen", email: "green@example.com", phone: "333-333-3333", salary: 10000)
    employee_sales = Employee.new(name: "Tony Stark", email: "ironman@example.com", phone: "444-444-4444", salary: 100000)
    employee_one.satisfactory?(true)
    employee_two.satisfactory?(true)
    employee_three.satisfactory?(false)
    employee_sales.satisfactory?(true)

    assert development.add_employee(employee_one)
    assert development.add_employee(employee_two)
    assert development.add_employee(employee_three)
    assert sales.add_employee(employee_sales)
    assert development.give_raise(10000) {|e| e.salary > 10000}
    assert sales.give_raise(50000) {|e| e.satisfactory == true}
    assert_equal 95000.00, employee_one.salary
    assert_equal 55000.00, employee_two.salary
    assert_equal 10000.00, employee_three.salary
    assert_equal 150000.00, employee_sales.salary

  end



end
