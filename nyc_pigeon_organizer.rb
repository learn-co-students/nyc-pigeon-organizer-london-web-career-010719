require 'pry'

  def nyc_pigeon_organizer(data)
    # write your code here!
    pigeon_list = {}
    data.each do |attribute, details_hash|
      details_hash.each do |feature, name_array|
        name_array.each do |name|
        if pigeon_list.has_key?(name) != true
          pigeon_list[name] = {}
        end
        if pigeon_list[name].has_key?(attribute) != true
          pigeon_list[name][attribute] = []
        end
        if pigeon_list[name][attribute].include?(feature) != true
          pigeon_list[name][attribute] << feature.to_s
        end
      end
    end
  end
  pigeon_list
end
