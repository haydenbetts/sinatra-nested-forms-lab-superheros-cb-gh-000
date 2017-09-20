require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    post '/teams' do
      # render a template that displays the submitted team data and each
      # member's data
      @team = Team.new(params["team"])
      @heroes = []
      params["team"]["heroes"].each do |hero_attributes|
        @heroes << Heroes.new(hero_attributes)
      end

      erb :team
    end

end
