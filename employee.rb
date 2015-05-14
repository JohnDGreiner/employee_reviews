class Employee
  attr_reader :name, :email, :phone, :salary

  def initialize(name, email, phone, salary, department)
    @name = name
    @email = email
    @phone = phone
    @salary = salary
    @department = department
  end

end
