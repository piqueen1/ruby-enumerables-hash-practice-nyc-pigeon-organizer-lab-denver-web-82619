require "pry"

def nyc_pigeon_organizer(data)
  pigeons = {}
  
  #iterate over each pigeon, creating a key pointing to a hash value
  data.each do |key, value|
    pigeons[key] = value
  end
  
  pigeons
  binding.pry
end
