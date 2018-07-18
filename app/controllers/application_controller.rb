require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    pots '/teams' do
      @team = Team.new(params[:team])

      params[:team][:heroes].each do |details|
        Superhero.new(details)
    end

end
