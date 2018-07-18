class Team

  attr_accessor :name, :motto

  @@all = []

  def initialize(params)
    @name = params[:name]
    @motto = params[:power]
    @biography = params[:biography]
    @@all << self
  end

  def self.all
    @@all
  end

end
