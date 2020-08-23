require_relative "conference"
require_relative "talks" 
require_relative "session"

session = Session.new(TALKSDATA::TALKSDATA)

Conference.new(session).schedule
