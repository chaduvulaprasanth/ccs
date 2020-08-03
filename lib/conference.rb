require_relative "talks" 
require_relative "session"
require_relative "track"

class Conference
  attr_reader :session

  def initialize
    @session = nil
  end

  def self.schedule
    new.schedule
  end

  def schedule
    talks = Talks.talks_list
    @session = Session.new(talks)
    track = Track.new(name)
    track_morning_sessions = session.morning_sessions(track)
    track_afternoon_sessions = session.afternoon_sessions(track)
  end
end
