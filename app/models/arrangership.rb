class Arrangership < ActiveRecord::Base
  belongs_to :score
  belongs_to :musician
  
end