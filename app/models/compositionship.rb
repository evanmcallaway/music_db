class Compositionship < ActiveRecord::Base
  belongs_to :compostion
  belongs_to :musician
  
end