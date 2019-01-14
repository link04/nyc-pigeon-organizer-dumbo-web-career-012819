require 'pry'

def nyc_pigeon_organizer(data)
  organized_data = {}
  data.each do |key, value|
      value.each do |intel, pigeons_names|
        pigeons_names.each do |pingeon| 
          
          if !organized_data[pingeon]
            organized_data[pingeon] = {}
            organized_data[pingeon][key] = []
            organized_data[pingeon][key] << intel
          elsif organized_data[pingeon] && !organized_data[pingeon][key] 
            organized_data[pingeon][key] = []
             organized_data[pingeon][key] << intel
          end
          
          if !organized_data[pingeon] 
            organized_data[pingeon] = {}
            organized_data[pingeon][key] = []
            organized_data[pingeon][key] << intel
          elsif organized_data[pingeon][key]
            organized_data[pingeon][key] << intel
          elsif organized_data[pingeon] && !organized_data[pingeon][key]
            organized_data[pingeon][key] = []
          end
          
          
          
        end
      end
  end
  organized_data
  binding.pry
end