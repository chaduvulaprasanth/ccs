class Track
  attr_reader :sessions, :name
  
  def initialize(name)
    @name = name
    @sessions = []
  end

  def add_sessions(session)
    @sessions << session
  end
end