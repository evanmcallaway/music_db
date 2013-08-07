class Musician < ActiveRecord::Base
  has_many :arrangerships
  has_many :compositionships
  has_many :performerships
  has_many :arrangements, :through => :arrangerships
  has_many :compositions, :through => :compositionships
  has_many :performances, :through => :performerships
  
end