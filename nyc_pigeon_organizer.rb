def nyc_pigeon_organizer(data)
  final_array = {}
  data.each do |key, value|
    value.each do |inner_key, names|
      names.each do |name|
        
        if !final_array[name]
          final_array[name] = {}
        end
        
        if !final_array[name][key]
          final_array[name][key] = []
        end
        
        final_array[name][key].push(inner_key.to_s)
      end
    end
  end
  final_array
end
