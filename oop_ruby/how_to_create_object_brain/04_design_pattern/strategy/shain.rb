require_relative 'gyoumu'

class Shain
  attr_accessor :gyoumu

  def initialize
    @gyoumu = Gyoumu.new
  end

  def work
    @gyoumu.standup
  end
end