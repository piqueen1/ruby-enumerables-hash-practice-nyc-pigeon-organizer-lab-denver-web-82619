def nyc_pigeon_organizer(data)
  pigeons = {}
  
  data.each do |key, value|
    value.each do |k, v|
      v.each do |name|
        if !pigeons[name]
          pigeons[name] = {}
        end
        if !pigeons[name][key]
          pigeons[name][key] = []
        end
        pigeons[name][key] << k.to_s
      end
    end
  end
  
  pigeons
end
   