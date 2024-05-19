class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 2 }
  validates :annual_revenue, numericality: {only_integer: true, greater_than: 0}
end


=begin

- Stores must always have a name that is a minimum of 3 characters
- Stores have an annual_revenue that is a number (integer) that must be 0 or more

=end
