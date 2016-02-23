class Superhero < ActiveRecord::Base
  validates :name, presence: true
  validates :power, presence: true
end
