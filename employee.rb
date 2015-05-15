class Employee
  attr_reader :name, :email, :phone, :salary, :rating

  def initialize(name:, email:, phone:, salary:)
    @name = name
    @email = email
    @phone = phone
    @salary = salary
  end

  def add_review(review)
    @review = []
    @review << review
  end

  def add_rating(rating:)
    if rating == true
      @rating = "Satisfactory"
    else
      @rating = "Unsatisfactory"
    end
  end

  def give_raise(amount:)
    @salary += amount
  end
end
