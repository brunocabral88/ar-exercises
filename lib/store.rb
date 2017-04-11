class Store < ActiveRecord::Base
  has_many :employees
  validate :is_women_or_men_apparel
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equals_to: 0 }

  private
  def is_women_or_men_apparel
    if self.mens_apparel == nil && self.womens_apparel && nil
      erros.add(:mens_apparel,"You must assign at least one type of apparel they will sell")
    end
  end
end
