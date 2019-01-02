def nyc_pigeon_organizer(data)
pidgeon_list = {}

  data.each do |attribute, values|
    values.each do |valuekey, names|
      names.each do |name|
        pidgeon_list[name] = {} if pidgeon_list[name] == nil
        pidgeon_list[name][attribute] = [] if pidgeon_list[name][attribute] == nil
        pidgeon_list[name][attribute] << valuekey.to_s
      end
    end
  end

pidgeon_list
end
