require_relative "talks" 
require_relative "session"
require_relative "track"

class Conference
  attr_reader :tracks, :session

  def initialize
    @tracks = []
    @session = nil
  end

  def self.schedule
    new.schedule
  end

  def schedule
    talks = Talks.talks_list
    @session = Session.new(talks)
    create_track("1")
    create_track("2")
    publish_all_tracks
  end

  def create_track(name)
    track = Track.new(name)
    track_morning_sessions = session.morning_sessions(track)
    track_afternoon_sessions = session.afternoon_sessions(track)
    @tracks << track
  end
end
