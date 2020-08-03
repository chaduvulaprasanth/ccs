require_relative "talks" 

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
  end
end
