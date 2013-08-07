class Performership < ActiveRecord::Base
  belongs_to :performance
  belongs_to :musician
  
end