class Department
  attr_reader :name

  def initialize(name)
    @name = name
    @employees = []
  end

  def add_employee(employee)
    @employees << employee
  end

  # def salary_total
  #   @department{|d| d.salary}
  # end

end
