
### some utils

class Time
  
  def self.cet( str )   # central european time (cet) + central european summer time (cest)  
    ActiveSupport::TimeZone['Vienna'].parse( str )
  end

  def self.eet( str )  # eastern european time (eet)  + 2 hours
    ActiveSupport::TimeZone['Bucharest'].parse( str )
  end
  
  def self.cst( str )  # central standard time (cst) - 6 hours 
    ActiveSupport::TimeZone['Mexico City'].parse( str )
  end
  
end # class Time


class File
  def self.read_utf8( path )
    open( path, 'r:bom|utf-8' ) do |file|
      file.read
    end
  end
end # class File




