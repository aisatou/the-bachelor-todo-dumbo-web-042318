# data = { 
#   "season 30": [
#     {
#       "name":      "Beth Smalls",
#       "age":       "26",
#       "hometown":  "Great Falls, Virginia",
#       "occupation":"Nanny/Freelance Journalist",
#       "status":    "Winner"
#     },
#     {
#       "name":       "Becca Tilley",
#       "age":        "27",
#       "hometown":   "Shreveport, Louisiana",
#       "occupation": "Chiropractic Assistant",
#       "status":     "Eliminated Week 8"
#     }
#   ],
#   "season 29": [
#     {
#       "name":      "Ashley Yeats",
#       "age":       "24",
#       "hometown":  "Denver, Colorado",
#       "occupation":"Dental Assitant",
#       "status":    "Winner"
#     },
#     {
#       "name":       "Sam Grover",
#       "age":        "29",
#       "hometown":   "New York, New York",
#       "occupation": "Entertainer",
#       "status":     "Eliminated Week 6"
#     }
#   ]
# }

def get_first_name_of_season_winner(data, season)
  # code here
  name = nil
  data[season].each do |contestant|
    if contestant['status'] == 'Winner'
      name = contestant['name'].split(' ')
    end
  end
  name[0]
end

def get_contestant_name(data, occupation)
  # code here
    puts occupation
  woman = nil 
data.collect do |seasons, info|
  info.collect do |contestant|
    if contestant["occupation"] == occupation
      woman = contestant["name"]
    end 
  end
end 
woman
end

def count_contestants_by_hometown(data, hometown)
  # code here
 
end

def get_occupation(data, hometown)
  # code here
  person = nil
  data.each do |hash_season, contestants_array|
    contestants_array.each do |contestant|
      if contestant["hometown"] == hometown
        person = contestant["occupation"]
      end
    end
  end
  person
end

def get_average_age_for_season(data, season)
  # code here
ages_added = 0 
  average_age = 0
  num_of_cont = data[season.to_sym].length 
  puts num_of_cont
  data.each do |seasons, info|
    if season.to_sym == seasons
      info.each do |contestant|
         ages_added += contestant[:age].to_i
       end
     end
   end 
average_age = (ages_added/num_of_cont).round
 end 