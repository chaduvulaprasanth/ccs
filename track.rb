class Track
  attr_reader :sessions, :name
  
  def initialize(name)
    @name = name
    @sessions = []
  end

  def add_sessions(session)
    @sessions << session
  end

  def publish_track
    track = "Track #{name} \n\n"
    sessions.each { |session| track += "#{session}\n\n" }
    return track
  end
end