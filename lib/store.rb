class Store < ActiveRecord::Base
  has_many :employees

  validate :is_women_or_men_apparel
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equals_to: 0 }

  before_destroy :has_employees?

  private
  def is_women_or_men_apparel
    if self.mens_apparel == nil && self.womens_apparel == nil
      errors.add(:mens_apparel,"You must assign at least one type of apparel they will sell")
    end
  end
  def has_employees?
    begin
      if self.employees.count > 0
        raise ActiveRecord::Rollback, "There are employees still related to this store."
      end
      rescue => exception
        puts exception
        return false
    end
  end
end
