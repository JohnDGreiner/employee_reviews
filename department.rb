class Department
  attr_reader :name

  def initialize(name)
    @name = name
    @employees = []
  end

  def add_employee(employee)
    @employees << employee
  end

  def salary_total
    s_total = 0
    @employees.each {|e| s_total += e.salary}
    s_total
  end

end
