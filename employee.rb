class Employee
  attr_reader :name, :email, :phone, :salary, :satisfactory

  def initialize(name:, email:, phone:, salary:)
    @name = name
    @email = email
    @phone = phone
    @salary = salary
  end

  # use to add a review to a employee
  def add_review(review)
    @review = []
    @review << review
  end


  def satisfactory?(bool)
      @satisfactory = bool
  end

  def give_raise(amount)
    @salary += amount
  end
end
