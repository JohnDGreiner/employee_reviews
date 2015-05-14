require 'minitest/autorun'
require 'minitest/pride'

#Note: This line is going to fail first.
require './department.rb'

class EmployeeReviewTest < Minitest::Test

  def test_department_exists
    assert Department
  end

  def test_create_department_name
    department = Department.new("Development")
    assert "Development", department.name
  end

end
