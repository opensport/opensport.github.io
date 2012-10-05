module SportDB

class Opts

  def create=(boolean)
    @create = boolean
  end

  def create?
    return false if @create.nil?   # default create flag is false
    @create == true
  end


  def output_path=(value)
    @output_path = value
  end
  
  def output_path
    @output_path || '.'
  end


end # class Opts

end # module SportDB
