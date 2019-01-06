require 'pry'


pigeon_hash = {
    :color => {
        :purple => ["Theo", "Peter Jr.", "Lucky"],
        :grey => ["Theo", "Peter Jr.", "Ms. K"],
        :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
        :brown => ["Queenie", "Alex"]
    },
    :gender => {
        :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
        :female => ["Queenie", "Ms. K"]
    },
    :lives => {
        "Subway" => ["Theo", "Queenie"],
        "Central Park" => ["Alex", "Ms. K", "Lucky"],
        "Library" => ["Peter Jr."],
        "City Hall" => ["Andrew"]
    }
}







def nyc_pigeon_organizer(data)
  # write your code here!
pigeon_list = {}
  
  data.each do | pigeon_data, attributes|
      
        attributes.each do | description, array|
          
                array.each do |name|
                    
                    if !pigeon_list.has_key?(name)
                        
                        pigeon_list[name] = {}
                    end
              
                    if !pigeon_list[name].has_key?(pigeon_data)
                        
                        pigeon_list[name][pigeon_data] = []
                    end
              
                    if !pigeon_list[name][pigeon_data].include?(description)
                        
                        pigeon_list[name][pigeon_data] << description.to_s
                    end
              
                end
          end
      end
  pigeon_list
end


#nyc_pigeon_organizer(pigeon_hash)
