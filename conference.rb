require_relative "talks" 
require_relative "session"
require_relative "track"

class Conference
  attr_reader :tracks, :session

  def initialize(session)
    @tracks = []
    @session = session
  end

  def schedule
    create_track("1")
    create_track("2")
    publish_all_tracks
  end

  private

  def create_track(name)
    track = Track.new(name)
    session.morning_sessions(track)
    session.afternoon_sessions(track)
    @tracks << track
  end

  def publish_all_tracks
    tracks.each {|track| puts track.publish_track}
  end
end
