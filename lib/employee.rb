class Employee < ActiveRecord::Base
  belongs_to :store
  
  validates :first_name, :last_name, :store_id, presence: true
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }

  before_validation :define_user_password

  private
  def define_user_password
    self.password = (0...8).map { (97 + rand(26)).chr }.join
  end
end
