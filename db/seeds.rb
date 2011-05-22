# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
#MLB::Team.all.each do|mlbteam|
  #Team.create(:name => mlbteam.name, :league => mlbteam.league, :division => mlbteam.league, :manager => mlbteam.manager, :wins => mlbteam.wins, :losses => mlbteam.losses, :founded => mlbteam.founded, :mascot => mlbteam.mascot, :ballpark => mlbteam.ballpark, :logo_url => mlbteam.logo_url)
#end
MLB_TOP = "http://gd2.mlb.com/components/game/mlb/year_2011/"
def grabit(mlbtop)
mo = Nokogiri::HTML(open(mlbtop))

mo.css('a').each do |day|
  unless day.text.match('Parent')
  
    doc = Nokogiri::HTML(open(mlbtop+day.text.strip))
    doc.css('a').each do |link|
       if link.text.match("gid_2011")
         begin 
           gamedoc = Nokogiri::HTML(open(mlbtop+day.text.strip+link.text.strip+"/players.xml"))
           game = Game.create :venue => gamedoc.xpath('//game').first['venue'], :starts_at => Date.parse(gamedoc.xpath('//game').first['date'])
           away_team = Team.find_or_create_by_mlb_id(:mlb_id => gamedoc.xpath('//game/team[attribute::type = "away"]').first['id'])
           away_team.update_attributes(:name => gamedoc.xpath('//game/team[attribute::type = "away"]').first['name'])
           home_team = Team.find_or_create_by_mlb_id(:mlb_id => gamedoc.xpath('//game/team[attribute::type = "home"]').first['id'])
           home_team.update_attributes(:name => gamedoc.xpath('//game/team[attribute::type = "home"]').first['name'])
           game.update_attributes("home_team_id" => home_team.id,"away_team_id" => away_team.id, :mlb_gameid => link.text.strip.gsub('/',''))

           
           gamedoc.xpath('//game/team[attribute::type = "away"]/player').each do|playr|
              player = Player.find_or_create_by_mlb_id(playr.attribute('id').value.to_i)
              player.update_attributes(:first =>  playr.attribute('first').value, :last => playr.attribute('last').value,:number => playr.attribute('num').value.to_i )
              TeamPlayerStats.create(:player => player, :game => game, :team => away_team, :rl => playr.attribute('rl').value, :status => playr.attribute('status').value, :avg => playr.attribute('avg').value.to_f, :hr => playr.attribute('hr').value.to_i, :rbi => playr.attribute('rbi').value.to_i, :wins => playr.attribute('wins') ? playr.attribute('wins').value.to_i : nil, :losses => playr.attribute('losses') ?  playr.attribute('losses').value.to_i : nil , :era => playr.attribute('era') ? playr.attribute('era').value.to_f : nil )
           end
           gamedoc.xpath('//game/team[attribute::type = "home"]/player').each do|playr|
              player = Player.find_or_create_by_mlb_id(playr.attribute('id').value.to_i)
              player.update_attributes(:first =>  playr.attribute('first').value, :last => playr.attribute('last').value,:number => playr.attribute('num').value.to_i )
              TeamPlayerStats.create(:player => player, :game => game, :team => home_team, :rl => playr.attribute('rl').value, :status => playr.attribute('status').value, :avg => playr.attribute('avg').value.to_f, :hr => playr.attribute('hr').value.to_i, :rbi => playr.attribute('rbi').value.to_i, :wins => playr.attribute('wins') ? playr.attribute('wins').value.to_i : nil, :losses => playr.attribute('losses') ?  playr.attribute('losses').value.to_i : nil , :era => playr.attribute('era') ? playr.attribute('era').value.to_f : nil )
           end
         rescue Exception => e  
            "error #{e.message}"
         end


       end
    end
  end
end


end


["month_04/","month_05/"].each do|mo|
  grabit(MLB_TOP+mo)
end


