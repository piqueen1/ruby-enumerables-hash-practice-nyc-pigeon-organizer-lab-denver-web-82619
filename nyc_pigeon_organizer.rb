require "pry"

def nyc_pigeon_organizer(data)
  pigeons = {}
  
  data.each do |key, value|
    value.each do |k, v|
      v.each do |name|
        binding.pry
        if !pigeons[name]
          pigeons[name] = {}
        end
        if !pigeons[name][key]
          pigeons[name][key] = []
        end
      end
    end
  end
  
  pigeons
  #binding.pry
end

=begin
pigeons => {:color=>
  {:purple=>["Theo", "Peter Jr.", "Lucky"],
   :grey=>["Theo", "Peter Jr.", "Ms. K"],
   :white=>["Queenie", "Andrew", "Ms. K", "Alex"],
   :brown=>["Queenie", "Alex"]},
 :gender=>
  {:male=>["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
   :female=>["Queenie", "Ms. K"]},
 :lives=>
  {"Subway"=>["Theo", "Queenie"],
   "Central Park"=>["Alex", "Ms. K", "Lucky"],
   "Library"=>["Peter Jr."],
   "City Hall"=>["Andrew"]}}
=end
   