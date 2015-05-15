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
    @employees.map {|e| s_total += e.salary}
    s_total
  end

  def give_raise(amount)
    need_raise = @employees.select { |e| yield(e)}
    need_raise.each { |e| e.give_raise(amount/need_raise.length)}
  end

end
