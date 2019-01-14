
# 내가 못썼던것 NEW! >> .keys << Returns a new array populated with the keys from this hash.

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |sort, hash|
    hash.each do |key,value|
      value.each do |name|
        if pigeon_list[name]
          if pigeon_list[name][sort]
            pigeon_list[name][sort] << key.to_s
          else
            pigeon_list[name][sort] = [key.to_s]
          end
        else
          pigeon_list[name] = {sort => [key.to_s]}
        end
      end
    end
  end
  pigeon_list
end
