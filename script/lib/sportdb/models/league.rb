module SportDB::Models


class League < ActiveRecord::Base
  
  ## leagues also used for conferences, world series, cups, etc.
  #
  ## league (cup/conference/series/etc.) + season (year) = event
  
  has_many :events
  
  ### has_many :seasons ## through events  add

end  # class League


end # module SportDB::Models
