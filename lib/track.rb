class Track
  attr_reader :sessions, :name
  
  def initialize(name)
    @name = name
    @sessions = []
  end
end