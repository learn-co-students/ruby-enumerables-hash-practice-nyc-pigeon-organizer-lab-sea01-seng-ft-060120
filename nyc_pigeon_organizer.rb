
def nyc_pigeon_organizer(data)
  new_pigeon_list = {}
  data.each do |color_gender_lives, inner_key|
    inner_key.each do |key, array|
       array.each do |name|
        if new_pigeon_list.has_key?(name)
          if new_pigeon_list[name].has_key?(color_gender_lives)
            new_pigeon_list[name][color_gender_lives] << key.to_s 
          else
            new_pigeon_list[name][color_gender_lives] = [key.to_s]
          end
        else
          new_pigeon_list[name] = {color_gender_lives => [key.to_s]}
        end
      end
    end
  end
  new_pigeon_list
end
