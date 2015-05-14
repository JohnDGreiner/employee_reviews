class Employee
  attr_reader :name, :email, :phone, :salary

  def initialize(name, email, phone, salary)
    @name = name
    @email = email
    @phone = phone
    @salary = salary
    @review = []
  end

  def add_review(review)
    @review = review
  end

  def add_rating(rating)
    @rating = rating
  end

end
