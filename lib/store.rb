class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3, too_short: "The minimum length of the name must be 3" }
  validates :annual_revenue, numericality: { greater_than: 0, message: "The annual revenue must be greater than 0" }
  validate :must_carry_at_least_men_or_women_apparel

  def must_carry_at_least_men_or_women_apparel
    if mens_apparel != true && womens_apparel != true
      errors.add(:must_carry_at_least_men_or_women_apparel, "Stores must carry at least one of the men's or women's apparel")
    end
  end
end
