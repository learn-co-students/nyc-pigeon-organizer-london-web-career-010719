require "pry"

def nyc_pigeon_organizer(data)
  pigeons = {}

  data.each do |attribute_key, attribute_data|
    attribute_data.each do |attribute_name, matching_pigeons|
      matching_pigeons.each do |pigeon|
        #check if pigeon is in hash, if so mofidy them, else add them then modify
        if pigeons.keys.include?(pigeon)
          #check if there is already an array for that attribute, if there isn't create it, if there is add to it
          if pigeons[pigeon][attribute_key] == nil
            pigeons[pigeon][attribute_key] = [attribute_name.to_s]
          else
            pigeons[pigeon][attribute_key] << attribute_name.to_s
          end
        else
          pigeons[pigeon] = {}
          pigeons[pigeon][attribute_key] = [attribute_name.to_s]
        end
      end
    end
  end
  pigeons
end
