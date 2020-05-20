require 'pry'
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  #binding.pry
  data.each do |color_g_l, hash_value|
    hash_value.each do |descriptions, array_of_names|
      array_of_names.each do |name|
      name
      
      if !pigeon_list[name] # cuz this is now a truthy due to ! we can go through the code below, otherwise we don't
        pigeon_list[name] = {}
      end
      if !pigeon_list[name][color_g_l]
        pigeon_list[name][color_g_l] = []
      end
      pigeon_list[name][color_g_l] << descriptions.to_s
      #binding.pry
    end
  end
end
pigeon_list
end

