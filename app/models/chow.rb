
class Chow < ActiveRecord::Base
    
def self.import(file)
  spreadsheet = open_spreadsheet(file)
  header = spreadsheet.row(1)
  (2..spreadsheet.last_row).each do |i|
    row = Hash[[header, spreadsheet.row(i)].transpose]
    chow = find_by_name(row["name"]) || new
    attribute = column_names.delete(1)
    
    chow.attributes = row.to_hash.slice(*column_names)
    
    chow.save!
  end
end

def self.open_spreadsheet(file)
  case File.extname(file.original_filename)
  when ".csv" then Roo::CSV.new(file.path, options = Hash.new) #add options
  when ".xls" then Roo::Excel.new(file.path, nil, :ignore)
  when ".xlsx" then Roo::Excelx.new(file.path, nil, :ignore)
  else raise "Unknown file type: #{file.original_filename}"
  end
end
  
def self.findtype

end
    
end
