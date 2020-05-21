def nyc_pigeon_organizer(data)
pigeon_list = {}

data.each do |attributes, attributes_value|
  attributes_value.each do |description, name|
    name.each do |name|
      if pigeon_list[name] == nil 
        pigeon_list[name] = {}
      end
      if pigeon_list[name][attributes] == nil 
        pigeon_list[name][attributes] = []
      end
      pigeon_list[name][attributes].push(description.to_s)
    end
  end
end
pigeon_list
end