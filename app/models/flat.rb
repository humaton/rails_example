class Flat < ActiveRecord::Base
  has_many :rooms
  has_many :users
end
